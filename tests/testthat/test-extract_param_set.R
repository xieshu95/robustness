context("extract_param_set")

test_that("test extract_param_set extracts correct param set from
          oceanic_ontogeny", {
  param_space <- load_param_space("oceanic_ontogeny")
  sim_pars <- extract_param_set(
    param_space_name = "oceanic_ontogeny",
    param_space = param_space,
    param_set = 1)
  expect_equal(sim_pars$time, 2.55)
  expect_equal(sim_pars$M, 1000)
  expect_equal(sim_pars$pars, c(0.0001, 1, 0.001, 0.01, 1))
  expect_equal(sim_pars$nonoceanic_pars, c(0, 0))
  expect_equal(sim_pars$island_ontogeny, "beta")
  expect_equal(sim_pars$sea_level, "const")
  expect_equal(sim_pars$area_pars, list(max_area = 13500,
                                               proportional_peak_t = 0.53,
                                               peak_sharpness = 1,
                                               total_island_age = 2.864,
                                               sea_level_amplitude = 0,
                                               sea_level_frequency = 0,
                                               island_gradient_angle = 0))
  expect_equal(sim_pars$ext_pars, c(1, 50))
  expect_equal(sim_pars$extcutoff, 1000)
  })

test_that("test extract_param_set extracts correct param set from
          oceanic_sea_level", {
  param_space <- load_param_space("oceanic_sea_level")
  sim_pars <- extract_param_set(
    param_space_name = "oceanic_sea_level",
    param_space = param_space,
    param_set = 1)
  expect_equal(sim_pars$time, 2.55)
  expect_equal(sim_pars$M, 1000)
  expect_equal(sim_pars$pars, c(0.0001, 1, 0.001, 0.01, 1))
  expect_equal(sim_pars$nonoceanic_pars, c(0, 0))
  expect_equal(sim_pars$island_ontogeny, "const")
  expect_equal(sim_pars$sea_level, "sine")
  expect_equal(sim_pars$area_pars, list(max_area = 13500,
                                               proportional_peak_t = 0,
                                               peak_sharpness = 0,
                                               total_island_age = 2.55,
                                               sea_level_amplitude = 60,
                                               sea_level_frequency = 25.5,
                                               island_gradient_angle = 75))
  expect_equal(sim_pars$ext_pars, c(1, 50))
  expect_equal(sim_pars$extcutoff, 1000)
})

test_that("test extract_param_set extracts correct param set from
          oceanic_ontogeny_sea_level", {
  param_space <- load_param_space("oceanic_ontogeny_sea_level")
  sim_pars <- extract_param_set(
    param_space_name = "oceanic_ontogeny_sea_level",
    param_space = param_space,
    param_set = 1)
  expect_equal(sim_pars$time, 2.55)
  expect_equal(sim_pars$M, 1000)
  expect_equal(sim_pars$pars, c(0.0001, 1, 0.001, 0.01, 1))
  expect_equal(sim_pars$nonoceanic_pars, c(0, 0))
  expect_equal(sim_pars$island_ontogeny, "beta")
  expect_equal(sim_pars$sea_level, "sine")
  expect_equal(sim_pars$area_pars, list(max_area = 13500,
                                               proportional_peak_t = 0.53,
                                               peak_sharpness = 1,
                                               total_island_age = 2.864,
                                               sea_level_amplitude = 60,
                                               sea_level_frequency = 25.5,
                                               island_gradient_angle = 75))
  expect_equal(sim_pars$ext_pars, c(1, 50))
  expect_equal(sim_pars$extcutoff, 1000)
})

test_that("test extract_param_set extracts correct param set from
          nonoceanic", {
  param_space <- load_param_space("nonoceanic")
  sim_pars <- extract_param_set(
    param_space_name = "nonoceanic",
    param_space = param_space,
    param_set = 1)
  expect_equal(sim_pars$time, 2.55)
  expect_equal(sim_pars$M, 1000)
  expect_equal(sim_pars$pars, c(0.5, 0.5, 10, 0.01, 1))
  expect_equal(sim_pars$nonoceanic_pars, c(0.05, 0.1))
})

test_that("test extract_param_set extracts correct param set from
          nonoceanic_sea_level", {
  param_space <- load_param_space("nonoceanic_sea_level")
  sim_pars <- extract_param_set(
    param_space_name = "nonoceanic_sea_level",
    param_space = param_space,
    param_set = 1)

  expect_equal(sim_pars$time, 2.55)
  expect_equal(sim_pars$M, 1000)
  expect_equal(sim_pars$pars, c(0.0001, 1, 0.001, 0.01, 1))
  expect_equal(sim_pars$nonoceanic_pars, c(0.05, 0.1))
  expect_equal(sim_pars$island_ontogeny, "const")
  expect_equal(sim_pars$sea_level, "sine")
  expect_equal(sim_pars$area_pars, list(max_area = 13500,
                                               proportional_peak_t = 0,
                                               peak_sharpness = 0,
                                               total_island_age = 2.55,
                                               sea_level_amplitude = 60,
                                               sea_level_frequency = 25.5,
                                               island_gradient_angle = 75))
  expect_equal(sim_pars$ext_pars, c(1, 50))
  expect_equal(sim_pars$extcutoff, 1000)
})

test_that("test extract_param_set extracts correct param set from
          nonoceanic_land_bridge", {
  param_space <- load_param_space("nonoceanic_land_bridge")
  sim_pars <- extract_param_set(
    param_space_name = "nonoceanic_land_bridge",
    param_space = param_space,
    param_set = 1)
  expect_equal(sim_pars$time, 2.55)
  expect_equal(sim_pars$M, 1000)
  expect_equal(sim_pars$pars, c(0.5, 0.5, Inf, 0.01, 1, 0.25,
                                       0.25, Inf, 0.02, 0))
  expect_equal(sim_pars$nonoceanic_pars, c(0.05, 0.1))
  expect_equal(sim_pars$shift_times, c(1.225, 1.325))
})
