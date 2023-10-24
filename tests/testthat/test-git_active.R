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
  expect_false({
    tempdir <- tempdir()
    setwd(tempdir)
    isActive <- git_active()
    setwd(tempdir)
    !isActive
  })

})
