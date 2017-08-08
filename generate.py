from template import Template

demo = r"""
<html>
    <body>
        {%
        def say_hello(arg):
            emit("hello ", arg, "<br>")
        %}

        <table>
            {%
                for i in range(10):
                    emit("<tr><td> ")
                    say_hello(i)
                    emit(" </tr></td>\n")
            %}
        </table>

        {%emit("hi")%}

        tralala {%if x > 7:
            say_hello("big x")%} lala

        {\%this is escaped starting delimiter

        {%emit("this %\} is an escaped ending delimiter")%}

        {%# this is a python comment %}

    </body>
</html>
"""

template = Template(demo)
print(template({'x': 10}))
