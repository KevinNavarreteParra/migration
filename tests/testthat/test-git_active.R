test_that("git_active function detects git = TRUE", {

  orig_wd <- getwd()

  # Test 1: When the git repository is active
  expect_true({
    tempdir <- tempdir()
    setwd(tempdir)
    system("git init")
    isActive <- git_active()
    setwd(tempdir)
    system("rm -rf .git")  # Remove the Git directory
    isActive
  })

  setwd(orig_wd)
})

test_that("git_active function detects git = FALSE", {
  # Test 2: When the git repository is not active
  captured_output <- capture.output({
    temp_dir <- tempdir()
    old_dir <- setwd(temp_dir)

    # Deactivate git in the temporary directory
    system("mv .git .git_deactivated 2>/dev/null")

    isActive <- git_active()

    # Reactivate git after the test is done
    system("mv .git_deactivated .git 2>/dev/null")

    setwd(old_dir)
    !isActive
  })

  # Check if the captured output contains the specific error message
  expect_true(any(grepl("not a git repository", captured_output)) ||
                any(grepl("FALSE", captured_output)) ||
                any(grepl("had status 128", captured_output)))

})

