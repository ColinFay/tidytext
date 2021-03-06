test_that("unnest_ngrams works", {
  r <- unnest_ngrams(skspr, out, txt)
  expect_nrow(r, 24)
  expect_first_row(r, out, "now is the")
  r <- unnest_ngrams(skspr, out, txt, n = 4)
  expect_nrow(r, 20)
  expect_first_row(r, out, "now is the winter")
  r <- unnest_ngrams(skspr, out, txt, n = 4, stopwords = c("the"))
  expect_nrow( r, 16 )
  expect_first_row(r, out, "now is winter")
})
