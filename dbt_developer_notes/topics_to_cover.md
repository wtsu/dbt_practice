
# 01 Developing and optimizing dbt models
- Identifying and verifying any raw object dependencies
- Understanding core dbt materializations
- Conceptualizing modularity and how to incorporate DRY principles
    - [configuring a staging layer](https://github.com/wtsu/dbt_practice/pull/5)
    - [creating a staging and mart](https://github.com/wtsu/dbt_practice/pull/6)
- Using commands such as build, run, test, docs, show, snapshot, and seed
    - [seed](https://github.com/wtsu/dbt_practice/pull/3)
- Creating a logical flow of models and building clean DAGs
- Defining configurations in dbt_project.yml 
    - [generate_schema_name & custom schema location](https://github.com/wtsu/dbt_practice/pull/3)
    - [creating seperate database](https://github.com/wtsu/dbt_practice/pull/4)
- Using dbt Packages
- Creating Python Models
- Providing access to users to models with the grants config
- Creating snapshots in YAML
- Selecting the optimal incremental strategy based on a dataset's characteristics
- Validating model logic and schema definitions in dry-runs using the --empty flag
    - [using the empty flag to test incremental model](https://github.com/wtsu/dbt_practice/pull/10)
- Running models in sample mode using the --sample flag
- Understanding advanced dbt materializations such as microbatch
    - [creating microbatch](https://github.com/wtsu/dbt_practice/pull/12)

# 02 Managing dbt models governance
- Adding contracts to models to ensure the shape of model
- Creating different versions of our models and deprecating the old ones
- Defining constraints in YAML to enforce data integrity at the platform level

# 03 Debugging data modeling errors
- Understanding logged error messages
- Troubleshooting using compiled code
- Troubleshooting .yml compilation errors
- Developing and implementing a fix and testing it prior to merging
- Managing dbt behavior with flags
    - [using variables to define materialization](https://github.com/wtsu/dbt_practice/pull/9)

# 04 Troubleshooting and optimizing dbt pipelines
- Troubleshooting and managing failure points in the DA G
- Using dbt clone

# 05 Implementing dbt tests
- Using generic, singular, custom, custom generic, and unit tests on a wide variety of models and sources
    - [using target variable to conditionally enable default relationships test](https://github.com/wtsu/dbt_practice/pull/11)
- Testing assumptions for dbt models and sources
- Implementing various testing steps in the workflow

# 06 Implementing and maintaining external dependencies
- Implementing dbt exposures
- Implementing source freshness

# 07 Leveraging the dbt state
- Understanding state and state selection
- Using dbt retry
    - [using dbt build || dbt retry](https://github.com/wtsu/dbt_practice/pull/7)