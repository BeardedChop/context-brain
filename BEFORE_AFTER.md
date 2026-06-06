# Before And After

ContextBrain does not make the AI smarter.

It makes the starting context cleaner, so the AI wastes less time guessing.

## Before

```text
can you add auth to this app?

don't break the dashboard. also i think we were using supabase but maybe clerk?
there's some stuff in lib. just figure it out.
```

What usually happens:

- the assistant guesses the auth provider
- it changes files outside the current flow
- it invents structure because no architecture note exists
- it misses old decisions
- you spend the next prompt correcting it

## After

```text
Read .context/packed-context.md first.

Goal: add email auth.
Constraint: keep dashboard routes unchanged.
Decision log says we use Supabase, not Clerk.
Architecture says auth helpers live in lib/auth.

Before editing, give me the smallest safe implementation plan.
```

What changes:

- the assistant starts from the current project goal
- it sees constraints before code
- it respects past decisions
- it knows where changes belong
- you get a plan before files move

## The Difference

Bad sessions start with a vague task.

Better sessions start with:

- project goal
- current state
- architecture map
- decision history
- constraints
- next action

That is all ContextBrain is trying to protect.
