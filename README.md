# Object-Centric Learning Models

## Development Setup

1. Clone this repository
2. Create poetry environment: `poetry install` when using timm models `poetry install -E timm`
3. Activate the poetry virtual environment: `poetry shell`
4. Install pre-commit hooks: `pre-commit install`

### Workflow with pre-commit

We are using `pre-commit` to manage automatic code formatting and linting. For someone who has never worked with pre-commit, this can be a bit unusual. `pre-commit` works by setting up a Git commit hook that runs before each `git commit`. The hook executes a set of tests and automatic formatting *on all files that are modified by the commit*:
- If a file does not pass a test, the commit is aborted and you are required to fix the problems, `git add` the files and run `git commit` again.
- If a file is automatically formatted, the commit is also aborted. You can review the proposed changes using `git diff`, accept them with `git add` and run `git commit` again.

It can also make sense to manually run the hooks on all files in the repository (using `pre-commit run -a`) *before committing*, to make sure the commit passes.
Note that this does not run the hooks on files which are not yet commited to the repository.

Important: make sure to run `pre-commit` within the environment installed by `poetry`. Otherwise the checks might fail because the tools are not installed, or use different versions from the ones specified in `poetry.lock`.

## Running experiments

Experiments are defined in the folder `configs/experiment` and can be run
by setting the experiment variable.

```bash
poetry run ocl_train +experiment=slot_attention/clevr6
```

The result is saved in a timestamped subdirectory in
`outputs/<experiment_name>`, i.e. `outputs/slot_attention/clevr6/<date>_<time>`
in the above case. The prefix path `outputs` can be configured using the
`experiment.root_output_path` variable.
