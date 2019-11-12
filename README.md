# Muse-Dev

MuseDev delivers a DevOps-native analysis platform that helps developers find
and fix their most elusive bugs. MuseDev orchestrates code analysis to
automatically run at each pull-request and deliver results as comments during
code review. By integrating into developers’ existing workflow, Muse helps teams
write their best code.

The [Github app](https://github.com/apps/muse-dev) is currently in closed beta.
Please contact us at hello@muse.dev to enter the trial.

# MuseDev C Examples

MuseDev is a code analysis system that aids developers during code review.
Working in concert with repository hosting systems, such as GitHub, Muse acts on
each pull request analyzing the code for defects and posting the results as
comments inline with the repository host.

This repository contains everything needed to see Muse in action, including a
simple C program and a set of branches that introduce bugs. Each branch can be
used to create a pull request that Muse will analyze. Simply follow the steps
for your repository host listed below. These examples serve both as a smoke-test
that you are accepted to our private beta and to demonstrate user workflow.

### Running on GitHub cloud

 1. **Install the Muse app** : Follow the instructions at
    [https://docs.muse.dev/docs/github-cloud/installation/](https://docs.muse.dev/docs/github-cloud/installation/)
    to install the Muse app.

 2. **Fork this repository into GitHub** : Follow the instructions at
    [https://help.github.com/en/github/getting-started-with-github/fork-a-repo](https://help.github.com/en/github/getting-started-with-github/fork-a-repo)
    to fork this repository.

 3. **Add the repo to muse through the app settings** : Navigate to
    [https://github.com/apps/muse-dev](https://github.com/apps/muse-dev) and
    select `Configure`. Then choose the GitHub account you wish to configure.
    Under the `Repository Access` section, enable the repository created in step
    2.

 4. **Create a pull request** : Follow the instructions at
    [https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request)
    to create a pull request using one of the pre-configured branches listed
    below.

 5. **View the findings** : After a couple minutes, Muse will post comments on
    the pull request describing any flaws in the code that were uncovered during
    analysis.


### Branches

- `all-bugs` : [https://github.com/muse-dev/MuseDev/compare/master...all-bugs](https://github.com/muse-dev/MuseDev/compare/master...all-bugs)

- `dead-store` : [https://github.com/muse-dev/MuseDev/compare/master...dead-store](https://github.com/muse-dev/MuseDev/compare/master...dead-store)

- `memory-leak` : [https://github.com/muse-dev/MuseDev/compare/master...memory-leak](https://github.com/muse-dev/MuseDev/compare/master...memory-leak)

- `null-dereference` : [https://github.com/muse-dev/MuseDev/compare/master...null-dereference](https://github.com/muse-dev/MuseDev/compare/master...null-dereference)

- `resource-leak` : [https://github.com/muse-dev/MuseDev/compare/master...resource-leak](https://github.com/muse-dev/MuseDev/compare/master...resource-leak)


# Resources

* Our website [muse.dev](https://muse.dev)
* The [Github app](https://github.com/apps/muse-dev) (currently in closed beta).
* [Documentation](https://docs.muse.dev/docs/github-cloud/installation/)
