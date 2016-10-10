# How to use

Edit one of the Lectures/Lecture<number>.tex to add the relevant definition. A definition takes the following format:

```Tex
\begin{definition}{<definition name>}
<definition content>
\end{definition}
```

There is also an optional `summary` environment for use within the `definition` environment. For example:

```Tex
\begin{definition}{Thing}

    \begin{summary}
        Thing is a thing.
    \end{summary}
    
    Thing is a thing blah blah blah.

\end{definition}
```