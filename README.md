# Deeptree Espanso (Windows)

Espanso matches tailored for Windows systems at Deeptree.

## Installation

1. Download and install Espanso for Windows from the [official website](https://espanso.org/install/windows/).
2. Copy the contents of this repository into `%APPDATA%\espanso`.
3. Restart Espanso.

## Importing Espanso Configurations

Use the `espanso` command in PowerShell to reload the configuration:

```powershell
espanso restart
```

## Espanso Helper

## Personalization

### Using Espanso Helper

### Editing Configuration Files

In the Espanso configuration folder, navigate to the `variables_global` directory.

To adjust the configurations, open the `personalized_variables.yml` file in a
text editor. Replace the placeholder values with your own.

For example, there is an entry for your First Name, which you would then replace with your first name.

In the repository, you will see:

```yaml
- label: First Name
  name: myfirst
  comment: "Input your first name in the 'echo' field."
  type: echo
  params:
    echo: Peter
```

To personalize it for `Dallas`, you would need to change it to:

```yaml
- label: First Name
  name: myfirst
  comment: "Input your first name in the 'echo' field."
  type: echo
  params:
    echo: Dallas
```

> Only the `echo` field needs to be changed under `params`.

Continue to do this for each of the variables in the
`personalized_variables.yml` file. I have included a comment for each variable
to help you understand what it is for, what to fill in, and where to fill it
in.

## Expansion Descriptions
