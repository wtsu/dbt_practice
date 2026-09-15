
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
    - [creating analyst_role and providing grants](https://github.com/wtsu/dbt_practice/pull/15)
- Creating snapshots in YAML
    - [check col snapshot on source with hard_deletes configs](https://github.com/wtsu/dbt_practice/pull/17)
    - [updated_at snapshot](https://github.com/wtsu/dbt_practice/pull/18/changes)
- Selecting the optimal incremental strategy based on a dataset's characteristics
- Validating model logic and schema definitions in dry-runs using the --empty flag
    - [using the empty flag to test incremental model](https://github.com/wtsu/dbt_practice/pull/10)
- Running models in sample mode using the --sample flag
    - [using relative and timebound samples](https://github.com/wtsu/dbt_practice/pull/20)
- Understanding advanced dbt materializations such as microbatch
    - [creating microbatch](https://github.com/wtsu/dbt_practice/pull/12)

# 02 Managing dbt models governance
- Adding contracts to models to ensure the shape of model
   - [constraints if contract is not enforced is just metadata](https://github.com/wtsu/dbt_practice/pull/14)
- Creating different versions of our models and deprecating the old ones
    - [creating 3 model versions to practice deprecation](https://github.com/wtsu/dbt_practice/pull/21)
- Defining constraints in YAML to enforce data integrity at the platform level

# 03 Debugging data modeling errors
- Understanding logged error messages
- Troubleshooting using compiled code
- Troubleshooting .yml compilation errors
    - [yml anchors and yml merge](https://github.com/wtsu/dbt_practice/pull/23)
- Developing and implementing a fix and testing it prior to merging
- Managing dbt behavior with flags
    - [using variables to define materialization](https://github.com/wtsu/dbt_practice/pull/9)

# 04 Troubleshooting and optimizing dbt pipelines
- Troubleshooting and managing failure points in the DA G
- Using dbt clone

# 05 Implementing dbt tests
- Using generic, singular, custom, custom generic, and unit tests on a wide variety of models and sources
    - [using target variable to conditionally enable default relationships test](https://github.com/wtsu/dbt_practice/pull/11)
    - [creating a generic test](https://github.com/wtsu/dbt_practice/pull/16)
- Testing assumptions for dbt models and sources
- Implementing various testing steps in the workflow

# 06 Implementing and maintaining external dependencies
- Implementing dbt exposures
- Implementing source freshness
    - [creating source freshness checks and using source_status:fresher](https://github.com/wtsu/dbt_practice/pull/19)

# 07 Leveraging the dbt state
- Understanding state and state selection
    - [creating state file and trying dbt clone and state:new vs state:modified](https://github.com/wtsu/dbt_practice/pull/13)
- Using dbt retry
    - [using dbt build || dbt retry](https://github.com/wtsu/dbt_practice/pull/7)