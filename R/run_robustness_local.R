#' Run robustness analysis pipeline locally without saving output
#'
#' @inheritParams default_params_doc
#' @author Joshua Lambert, Pedro Neves
#' @return A list of errors and simulation and MLE output if
#' \code{\link{sim_constraints}} returned TRUE or simulation
#' output if \code{\link{sim_constraints}} returned FALSE.
#' @export
run_robustness_local <- function(param_space_name,
                                 param_set,
                                 replicates = 1000) {

  param_space <- load_param_space(
    param_space_name = param_space_name)

  testit::assert(
    param_space_name == "oceanic_ontogeny" ||
      param_space_name == "oceanic_sea_level" ||
      param_space_name == "oceanic_ontogeny_sea_level" ||
      param_space_name == "nonoceanic" ||
      param_space_name == "nonoceanic_sea_level" ||
      param_space_name == "nonoceanic_land_bridge")
  testit::assert(param_set >= 1)
  testit::assert(param_set <= nrow(param_space))
  testit::assert(replicates > 1)

  set.seed(1)

  sim_pars <- extract_param_set(
    param_space_name = param_space_name,
    param_space = param_space,
    param_set = param_set)

  geodynamic_sim <- geodynamic_sim(
    param_space_name = param_space_name,
    sim_pars = sim_pars,
    replicates = replicates)

  sim_constraints <- sim_constraints(
    sim = geodynamic_sim,
    replicates = replicates)

  if (sim_constraints == TRUE) {
    geodynamic_ml <- calc_ml(
      sim = geodynamic_sim)

    oceanic_sim_1 <- oceanic_sim(
      ml = geodynamic_ml,
      sim_pars = sim_pars)

    error <- calc_error(
      sim_1 = geodynamic_sim,
      sim_2 = oceanic_sim_1,
      replicates = replicates)

    spec_error <- error$spec_error
    endemic_error <- error$endemic_error
    nonendemic_error <- error$nonendemic_error

    oceanic_ml <- calc_ml(
      sim = oceanic_sim_1)

    oceanic_sim_2 <- oceanic_sim(
      ml = oceanic_ml,
      sim_pars = sim_pars)

    baseline_error <- calc_error(
      sim_1 = oceanic_sim_1,
      sim_2 = oceanic_sim_2,
      replicates = replicates)

    spec_baseline_error <- baseline_error$spec_error
    endemic_baseline_error <- baseline_error$endemic_error
    nonendemic_baseline_error <- baseline_error$nonendemic_error

    error_metrics <- calc_error_metrics(
      spec_error = spec_error,
      endemic_error = endemic_error,
      nonendemic_error = nonendemic_error,
      spec_baseline_error = spec_baseline_error,
      endemic_baseline_error = endemic_baseline_error,
      nonendemic_baseline_error = nonendemic_baseline_error)

    output_file <- list(
      spec_error = spec_error,
      endemic_error = endemic_error,
      nonendemic_error = nonendemic_error,
      spec_baseline_error = spec_baseline_error,
      endemic_baseline_error = endemic_baseline_error,
      nonendemic_baseline_error = nonendemic_baseline_error,
      error_metrics = error_metrics,
      geodynamic_sim = geodynamic_sim,
      geodynamic_ml = geodynamic_ml,
      oceanic_sim_1 = oceanic_sim_1,
      oceanic_ml = oceanic_ml,
      oceanic_sim_2 = oceanic_sim_2)

  } else {
    output_file <- list(
      geodynamic_sim = geodynamic_sim)
  }
  return(output_file)
}
