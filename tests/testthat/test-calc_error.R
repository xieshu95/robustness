context("calc_error")

test_that("test calc_error output is correct", {
  if (Sys.getenv("TRAVIS") != "" || Sys.getenv("APPVEYOR") != "") {
    param_space <- load_param_space(
      param_space_name = "oceanic_ontogeny")
    set.seed(1)
    sim_pars <- extract_param_set(
      param_space_name = "oceanic_ontogeny",
      param_space = param_space,
      param_set = 2)
    geodynamic_sim <- geodynamic_sim(
      param_space_name = "oceanic_ontogeny",
      sim_pars = sim_pars,
      replicates = 2)
    #ML output from oceanic_ontogeny param_set 2 with seed 1
    geodynamic_ml <- list()
    geodynamic_ml[[1]] <- data.frame("lambda_c" = 0.9516893216529831,
                                     "mu" = 0.4371724756929532,
                                     "K" = 26.45933105611771,
                                     "gamma" = 0.005832693735317008,
                                     "lambda_a" = 1.91311658602524,
                                     "loglik" = -93.6464134227662,
                                     "df" = 5,
                                     "conv" = 0)
    geodynamic_ml[[2]] <- data.frame("lambda_c" = 1.17346081209476,
                                     "mu" = 0.9780652536369839,
                                     "K" = 1.798109468901113,
                                     "gamma" = 0.01258190594811776,
                                     "lambda_a" = 0.8917175650839453,
                                     "loglik" = -133.3346436904723,
                                     "df" = 5,
                                     "conv" = 0)
    oceanic_sim <- oceanic_sim(
      ml = geodynamic_ml,
      sim_pars = sim_pars)
    error <- calc_error(
      sim_1 = geodynamic_sim,
      sim_2 = oceanic_sim,
      replicates = 2)
    expect_length(error, 3)
    expect_equal(error$spec_error, list(nltt = c(14.60200218911491,
                                                 21.13234531729715),
                                        num_spec_error = c(6, 18),
                                        num_col_error = c(1, 2)))
    expect_equal(error$endemic_error, list(nltt = c(12.19399299074907,
                                                    20.13397293941591)))
    expect_equal(error$nonendemic_error, list(nltt = c(4.105857769709307,
                                                       9.843170592071166)))
  } else {
    skip("Run only on TRAVIS or AppVeyor")
  }
})
