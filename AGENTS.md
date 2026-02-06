# Global Rules for AI Agents

## General Guidelines

- TDD and/or BDD preferred: tests (preferably unit-tests) first.
- Use the linear CLI to access Linear tickets.

## Git

- Automatically use the commit message "merge from <remote>/<branch>" when
  creating a merge commit. For cases where main is being merged into a feature
  branch and can be fast-forwarded, create the commit without waiting for user
  interaction and proceed.
- The agent should never force-push. If a force push is required, always wait
  for user interaction to OK it.
- In general, do not force-push unless absolutely necessary. Create a separate
  commit, and push that commit separately.
- For simple linter fixes, creating a commit with the message "linter" is fine.
- When creating a new git worktree, derive the worktree name from the indicated
  git branch, or use the current branch if none is indicated.
- When using git worktrees, make sure to create the worktree, then change to
  the worktree directory, before moving on.
- Do not include "Co-Authored-By" trailers for agents (Claude, etc.) in commit
  messages.

## GitHub

- Use the gh CLI for all GitHub interactions (issuing PRs, creating issues,
  etc.).
- When invoking the gh CLI, prepend 'GH_PAGER= ' (setting the GH_PAGER env var
  value to an empty string) so that the gh output does not paginate, which can
  block agent processing.
- When generating a PR, make a best effort attempt to keep the description to
  250 words or less. For cases where a longer description is called for, prompt
  me for review.
- PR titles should start with the linear ticket ID in square brackets (use
  [NOLINEAR] if there isn't a ticket or one cannot be inferred). After the
  bracket, add the conventional commit prefix ("feat:", "chore:", "fix:" etc.),
  and then follow with short name (8 words or less).
- Include a link to the Linear ticket in the description.

## Go

- Accept interfaces, return structs.
- After adding a dependency using 'go get', always run 'go mod tidy'. If the
  repository has a 'vendor' directory alongside the go.mod file, also run 'go mod
  vendor' (i.e. 'go mod tidy && go mod vendor').
- Only use hand-written mocks/stubs when absolutely necessary. Prefer Uber's
  gomock library.
- Mocks should be generated, if possible, to the "mocks" sub-package relative
  to the interface. E.g. if the interface is in package "foo", the mocks should
  be generated to "foo/mocks" with "mocks" as the package identifier. 
- Ideally interfaces should be close to the code using them (rather than close
  to the code being used, i.e. the implementation). This is also where the
  //go:generate command should be.
- If it's available, use "just test" to run tests rather than "go test".
  Optional arguments are accepted and will be passed to "go test", e.g. "just
  test ./path/to/test.go".
- Use the "github.com/stretchr/testify" library. Preconditions and
  verifications of a pointer's non-nil state prior to accessing it (and therefore
  causing a panic) should use testify's "require" comparisons. Post-conditions
  should prefer testify's "assert" comparisons.
- Prefer '//go:generate go tool go.uber.org/mock/mockgen
  -destination=mocks/$GOFILE -source=$GOFILE -package=mocks' (use '//go:generate
  go run ...' if the tool is not installed as a tool).
- Do not build executables to the repository root; build them to the ./bin
  directory instead.
- Tests should be named "Test_<ExportedPackageFunction>" or
  "Test_<ExportedStruct>_<ExportedMemberFunction>". 
- Use 't.Run' to demarcate different test scenarios. 
- Prefer using a slice of test cases to execute permutations of a scenario,
  e.g.

  ```go
    t.Run("the scenario", func(t *testing.T) {
      tcs := []struct {
        name string
        setup func(*testing.T, <params as appropriate>)
        subject *Foo
        expect func(*testing.T, <things to verify>)
      } {
        // ...
      }

      for _, tc := range tcs {
        t.Run(tc.name, func (t *testing.T) {
          // body of the test
        })
      }
    }
  ```

- In the above test case strategy, prefer using "when <precondition>" as the
  name argument.
- When linting, use the command 'prek run --all-files golangci-lint-full'.
- Ignore the 'vendor' directory for any first-pass analysis, PR review, etc.
  Only dive in there if there's specific reason to do so.
- In tests, prefer using 't.Context()' when passing a context argument.
- Tests should reside in a separate package from the code under test, e.g. if
  the code being tested is in package "foo", the tests should be in "foo_test".
- Use string comparisons when testing decimal equality to avoid floating point
  precision issues, e.g.

  ```go
    require.Equal(t, "19.99", price.String())
  ```
