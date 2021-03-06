context("calc_ml")

test_that("test calc_ml output is correct with geodynamic sim", {
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
    geodynamic_ml <- calc_ml(
      sim = geodynamic_sim)
    expect_length(geodynamic_ml, 2)
    expect_equal(geodynamic_ml[[1]]$lambda_c, 0.9516893216529831,
                 tolerance = 0.001)
    expect_equal(geodynamic_ml[[1]]$mu, 0.4371724756929532,
                 tolerance = 0.001)
    expect_equal(geodynamic_ml[[1]]$K, 26.45933105611771,
                 tolerance = 0.001)
    expect_equal(geodynamic_ml[[1]]$gamma, 0.005832693735317008,
                 tolerance = 0.001)
    expect_equal(geodynamic_ml[[1]]$lambda_a, 1.91311658602524,
                 tolerance = 0.001)
    expect_equal(geodynamic_ml[[1]]$loglik, -93.6464134227662,
                 tolerance = 0.001)
    expect_equal(geodynamic_ml[[1]]$df, 5)
    expect_equal(geodynamic_ml[[1]]$conv, 0)
    expect_equal(geodynamic_ml[[2]]$lambda_c, 1.17346081209476,
                 tolerance = 0.001)
    expect_equal(geodynamic_ml[[2]]$mu, 0.9780652536369839,
                 tolerance = 0.001)
    expect_equal(geodynamic_ml[[2]]$K, 1.798109468901113,
                 tolerance = 0.05)
    expect_equal(geodynamic_ml[[2]]$gamma, 0.01258190594811776,
                 tolerance = 0.001)
    expect_equal(geodynamic_ml[[2]]$lambda_a, 0.8917175650839453,
                 tolerance = 0.001)
    expect_equal(geodynamic_ml[[2]]$loglik, -133.3346436904723,
                 tolerance = 0.001)
    expect_equal(geodynamic_ml[[2]]$df, 5)
    expect_equal(geodynamic_ml[[2]]$conv, 0)
  } else {
    skip("Run only on TRAVIS or AppVeyor")
  }
})


test_that("test calc_ml output is correct with oceanic sim", {
  if (Sys.getenv("TRAVIS") != "" || Sys.getenv("APPVEYOR") != "") {
    param_space <- load_param_space(
      param_space_name = "oceanic_ontogeny")
    geodynamic_ml <- list()
    geodynamic_ml[[1]] <- data.frame("lambda_c" = 1,
                                     "mu" = 1,
                                     "K" = 25,
                                     "gamma" = 0.01,
                                     "lambda_a" = 1,
                                     "loglik" = -90,
                                     "df" = 5,
                                     "conv" = 0)
    geodynamic_ml[[2]] <- data.frame("lambda_c" = 1,
                                     "mu" = 1,
                                     "K" = 25,
                                     "gamma" = 0.01,
                                     "lambda_a" = 1,
                                     "loglik" = -90,
                                     "df" = 5,
                                     "conv" = 0)
    sim_pars <- extract_param_set(
      param_space_name = "oceanic_ontogeny",
      param_space = param_space,
      param_set = 1)
    set.seed(1)
    oceanic_sim_1 <- oceanic_sim(
      ml = geodynamic_ml,
      sim_pars = sim_pars)
    oceanic_ml <- calc_ml(
      sim = oceanic_sim_1)
    expect_length(oceanic_ml, 2)
    expect_equal(oceanic_ml[[1]]$lambda_c, 0.4703865020955945,
                 tolerance = 0.001)
    expect_equal(oceanic_ml[[1]]$mu, 0.3024123467825012,
                 tolerance = 0.001)
    expect_equal(oceanic_ml[[1]]$K, 0.9604172665676682,
                 tolerance = 0.001)
    expect_equal(oceanic_ml[[1]]$gamma, 0.005654402886347983,
                 tolerance = 0.001)
    expect_equal(oceanic_ml[[1]]$lambda_a, 1.256814199481393,
                 tolerance = 0.001)
    expect_equal(oceanic_ml[[1]]$loglik, -86.44387709521121,
                 tolerance = 0.001)
    expect_equal(oceanic_ml[[1]]$df, 5)
    expect_equal(oceanic_ml[[1]]$conv, 0)
    expect_equal(oceanic_ml[[2]]$lambda_c, 1.266996227093286,
                 tolerance = 0.001)
    expect_equal(oceanic_ml[[2]]$mu, 1.360311534579718,
                 tolerance = 0.001)
    expect_equal(oceanic_ml[[2]]$K, 4.29713623613709,
                 tolerance = 0.001)
    expect_equal(oceanic_ml[[2]]$gamma, 0.01871138624408656,
                 tolerance = 0.001)
    expect_equal(oceanic_ml[[2]]$lambda_a, 7.741644634429056e-08,
                 tolerance = 0.001)
    expect_equal(oceanic_ml[[2]]$loglik, -139.8897801706968,
                 tolerance = 0.001)
    expect_equal(oceanic_ml[[2]]$df, 5)
    expect_equal(oceanic_ml[[2]]$conv, 0)
  } else {
    skip("Run only on TRAVIS or AppVeyor")
  }
})

test_that("test calc_ml output is correct for failed convergence", {
  if (Sys.getenv("TRAVIS") != "" || Sys.getenv("APPVEYOR") != "") {
    param_space <- load_param_space(
      param_space_name = "oceanic_sea_level")
    set.seed(1)
    sim_pars <- extract_param_set(
      param_space_name = "oceanic_sea_level",
      param_space = param_space,
      param_set = 233)
    geodynamic_sim <- geodynamic_sim(
      param_space_name = "oceanic_sea_level",
      sim_pars = sim_pars,
      replicates = 2)
    sim_constraints <- sim_constraints(
      sim = geodynamic_sim,
      replicates = 2)
    geodynamic_ml <- calc_ml(
      sim = geodynamic_sim)
    expect_length(geodynamic_ml, 2)
    expect_equal(geodynamic_ml[[1]], "ML didn't converge")
  } else {
    skip("Run only on TRAVIS or AppVeyor")
  }
})
