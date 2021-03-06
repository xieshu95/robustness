context("load_param_space")

test_that("test load_param_space loads oceanic_ontogeny
          parameter space", {
  oceanic_ontogeny <- load_param_space(
    param_space_name = "oceanic_ontogeny"
    )
  expect_equal(nrow(oceanic_ontogeny), 432)
  expect_equal(ncol(oceanic_ontogeny), 20)
  expect_equal(names(oceanic_ontogeny),
               c("time", "M", "lac", "mu_min", "mu_p", "K",
                 "gam", "laa", "island_ontogeny", "sea_level",
                 "max_area", "peak_time", "sharpness",
                 "total_island_age", "sea_level_amplitude",
                 "sea_level_frequency", "island_gradient_angle",
                 "extcutoff", "x_s", "x_nonend"))
  expect_true(is.numeric(oceanic_ontogeny[[1]]))
  expect_true(is.numeric(oceanic_ontogeny[[2]]))
  expect_true(is.numeric(oceanic_ontogeny[[3]]))
  expect_true(is.numeric(oceanic_ontogeny[[4]]))
  expect_true(is.numeric(oceanic_ontogeny[[5]]))
  expect_true(is.numeric(oceanic_ontogeny[[6]]))
  expect_true(is.numeric(oceanic_ontogeny[[7]]))
  expect_true(is.numeric(oceanic_ontogeny[[8]]))
  expect_true(is.character(oceanic_ontogeny[[9]]))
  expect_true(is.character(oceanic_ontogeny[[10]]))
  expect_true(is.numeric(oceanic_ontogeny[[11]]))
  expect_true(is.numeric(oceanic_ontogeny[[12]]))
  expect_true(is.numeric(oceanic_ontogeny[[13]]))
  expect_true(is.numeric(oceanic_ontogeny[[14]]))
  expect_true(is.numeric(oceanic_ontogeny[[15]]))
  expect_true(is.numeric(oceanic_ontogeny[[16]]))
  expect_true(is.numeric(oceanic_ontogeny[[17]]))
  expect_true(is.numeric(oceanic_ontogeny[[18]]))
  expect_true(is.numeric(oceanic_ontogeny[[19]]))
  expect_true(is.numeric(oceanic_ontogeny[[20]]))
})

test_that("test load_param_space loads oceanic_sea_level
          parameter space", {
  oceanic_sea_level <- load_param_space(
    param_space_name = "oceanic_sea_level"
  )
  expect_equal(nrow(oceanic_sea_level), 864)
  expect_equal(ncol(oceanic_sea_level), 20)
  expect_equal(names(oceanic_sea_level),
               c("time", "M", "lac", "mu_min", "mu_p", "K",
                 "gam", "laa", "island_ontogeny", "sea_level",
                 "max_area", "peak_time", "sharpness",
                 "total_island_age", "sea_level_amplitude",
                 "sea_level_frequency", "island_gradient_angle",
                 "extcutoff", "x_s", "x_nonend"))
  expect_true(is.numeric(oceanic_sea_level[[1]]))
  expect_true(is.numeric(oceanic_sea_level[[2]]))
  expect_true(is.numeric(oceanic_sea_level[[3]]))
  expect_true(is.numeric(oceanic_sea_level[[4]]))
  expect_true(is.numeric(oceanic_sea_level[[5]]))
  expect_true(is.numeric(oceanic_sea_level[[6]]))
  expect_true(is.numeric(oceanic_sea_level[[7]]))
  expect_true(is.numeric(oceanic_sea_level[[8]]))
  expect_true(is.character(oceanic_sea_level[[9]]))
  expect_true(is.character(oceanic_sea_level[[10]]))
  expect_true(is.numeric(oceanic_sea_level[[11]]))
  expect_true(is.numeric(oceanic_sea_level[[12]]))
  expect_true(is.numeric(oceanic_sea_level[[13]]))
  expect_true(is.numeric(oceanic_sea_level[[14]]))
  expect_true(is.numeric(oceanic_sea_level[[15]]))
  expect_true(is.numeric(oceanic_sea_level[[16]]))
  expect_true(is.numeric(oceanic_sea_level[[17]]))
  expect_true(is.numeric(oceanic_sea_level[[18]]))
  expect_true(is.numeric(oceanic_sea_level[[19]]))
  expect_true(is.numeric(oceanic_sea_level[[20]]))
})

test_that("test load_param_space loads oceanic_ontogeny_sea_level
          parameter space", {
  oceanic_ontogeny_sea_level <- load_param_space(
    param_space_name = "oceanic_ontogeny_sea_level"
  )
  expect_equal(nrow(oceanic_ontogeny_sea_level), 864)
  expect_equal(ncol(oceanic_ontogeny_sea_level), 20)
  expect_equal(names(oceanic_ontogeny_sea_level),
               c("time", "M", "lac", "mu_min", "mu_p", "K",
                 "gam", "laa", "island_ontogeny", "sea_level",
                 "max_area", "peak_time", "sharpness",
                 "total_island_age", "sea_level_amplitude",
                 "sea_level_frequency", "island_gradient_angle",
                 "extcutoff", "x_s", "x_nonend"))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[1]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[2]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[3]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[4]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[5]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[6]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[7]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[8]]))
  expect_true(is.character(oceanic_ontogeny_sea_level[[9]]))
  expect_true(is.character(oceanic_ontogeny_sea_level[[10]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[11]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[12]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[13]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[14]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[15]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[16]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[17]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[18]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[19]]))
  expect_true(is.numeric(oceanic_ontogeny_sea_level[[20]]))
})

test_that("test load_param_space loads nonoceanic parameter space", {
  nonoceanic <- load_param_space(
    param_space_name = "nonoceanic"
  )
  expect_equal(nrow(nonoceanic), 1296)
  expect_equal(ncol(nonoceanic), 9)
  expect_equal(names(nonoceanic),
               c("time", "M", "lac", "mu", "K", "gam", "laa", "x_s",
                 "x_nonend"))
  expect_true(is.numeric(nonoceanic[[1]]))
  expect_true(is.numeric(nonoceanic[[2]]))
  expect_true(is.numeric(nonoceanic[[3]]))
  expect_true(is.numeric(nonoceanic[[4]]))
  expect_true(is.numeric(nonoceanic[[5]]))
  expect_true(is.numeric(nonoceanic[[6]]))
  expect_true(is.numeric(nonoceanic[[7]]))
  expect_true(is.numeric(nonoceanic[[8]]))
  expect_true(is.numeric(nonoceanic[[9]]))
})

test_that("test load_param_space loads nonoceanic_sea_level parameter space", {
  nonoceanic_sea_level <- load_param_space(
    param_space_name = "nonoceanic_sea_level"
  )
  expect_equal(nrow(nonoceanic_sea_level), 3456)
  expect_equal(ncol(nonoceanic_sea_level), 20)
  expect_equal(names(nonoceanic_sea_level),
               c("time", "M", "lac", "mu_min", "mu_p", "K",
                 "gam", "laa", "island_ontogeny", "sea_level",
                 "max_area", "peak_time", "sharpness",
                 "total_island_age", "sea_level_amplitude",
                 "sea_level_frequency", "island_gradient_angle",
                 "extcutoff", "x_s", "x_nonend"))
  expect_true(is.numeric(nonoceanic_sea_level[[1]]))
  expect_true(is.numeric(nonoceanic_sea_level[[2]]))
  expect_true(is.numeric(nonoceanic_sea_level[[3]]))
  expect_true(is.numeric(nonoceanic_sea_level[[4]]))
  expect_true(is.numeric(nonoceanic_sea_level[[5]]))
  expect_true(is.numeric(nonoceanic_sea_level[[6]]))
  expect_true(is.numeric(nonoceanic_sea_level[[7]]))
  expect_true(is.numeric(nonoceanic_sea_level[[8]]))
  expect_true(is.character(nonoceanic_sea_level[[9]]))
  expect_true(is.character(nonoceanic_sea_level[[10]]))
  expect_true(is.numeric(nonoceanic_sea_level[[11]]))
  expect_true(is.numeric(nonoceanic_sea_level[[12]]))
  expect_true(is.numeric(nonoceanic_sea_level[[13]]))
  expect_true(is.numeric(nonoceanic_sea_level[[14]]))
  expect_true(is.numeric(nonoceanic_sea_level[[15]]))
  expect_true(is.numeric(nonoceanic_sea_level[[16]]))
  expect_true(is.numeric(nonoceanic_sea_level[[17]]))
  expect_true(is.numeric(nonoceanic_sea_level[[18]]))
  expect_true(is.numeric(nonoceanic_sea_level[[19]]))
  expect_true(is.numeric(nonoceanic_sea_level[[20]]))
})

test_that("test load_param_space loads nonoceanic_land_bridge parameter
          space", {
  nonoceanic_land_bridge <- load_param_space(
    param_space_name = "nonoceanic_land_bridge"
  )
  expect_equal(nrow(nonoceanic_land_bridge), 1728)
  expect_equal(ncol(nonoceanic_land_bridge), 15)
  expect_equal(names(nonoceanic_land_bridge),
               c("time", "M", "lac_1", "mu_1", "K_1", "gam_1",
                 "laa_1", "x_s", "x_nonend", "shift_times",
                 "lac_2", "mu_2", "K_2", "gam_2", "laa_2"))
  expect_true(is.numeric(nonoceanic_land_bridge[[1]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[2]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[3]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[4]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[5]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[6]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[7]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[8]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[9]]))
  expect_true(is.character(nonoceanic_land_bridge[[10]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[11]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[12]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[13]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[14]]))
  expect_true(is.numeric(nonoceanic_land_bridge[[15]]))
})
