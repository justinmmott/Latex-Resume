# Latex-Resume
Traditional Resume Latex Document Class

# Documentation
## Heading
`\userinfo`
Takes in 3 arguments in the following order, Name, Phone Number, email. 

Sample Usage: `\userinfo{Justin Mott}{(555) 555-5555}{JustinMMott@gmail.com}`

![Sample Output of userinfo](https://i.imgur.com/vEN2Put.png)

`\userinfogithublinkedin` takes in 5 arguments where the first 3 are the same as `\userinfo`. The remaining 2 are github username and linkedIn username.

Sample Usage: `\userinfogithublinkedin{Justin M Mott}{(555) 555-5555}{JustinMMott@gmail.com}
    {justinmmott}{justinmmott}`

![Sample output of userinfogithublinkedin](https://imgur.com/arymrgv.png)

## Sections
`\section` Has been overrided 

`\subsection` Has been overrided 

`\subsubsection` Has been overridded 

Their uses can be seen in the following example:
```
\section{Education}
    \subsection{University of North Carolina at Chapel Hill}
      \subsubsection{Bachelor of Science in Computer Science}
      \subsubsection{Bachelor of Science in Mathematics}
```

![Sample output of sections](https://i.imgur.com/LoqhFXa.png)
## Dated commands
`\datedsubsection` and `\datedsection` have been added. 

They act the same as their parent command, but their second arugment is place on the other side of the page which is most commonly used for dates.

`\datedsubsection{University of North Carolina at Chapel Hill}{2016 -- 2020}`

![Sample output of datedsubsection](https://i.imgur.com/fB9G5MP.png)

## Bulleted Commands
`\bulletedsubsection` and `\bulletedsubsubsection` have been added.

They take in a single list. Each element of this list will be placed as an item in a bulleted list

Sample Usage:

```
\datedsubsection{Software Development Engineer Intern at Amazon}{Summer 2019}
  \bulletedsubsubsections{{
      Created a Circuit Breaker that tripped when a service was given parameters that 
      were previously marked as invalid, which led to fewer tickets being cut to the 
      service owners. 
    }, {
      Developed software to mark parameters, given to a service, as invalid if they were 
      found to cause errors while calling other services.
    }
  }
```

![Sample outut of bulletedsubsubsections](https://i.imgur.com/wHkPege.png)


