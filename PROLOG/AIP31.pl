% Generate the HTML for the web blog post
generate_html :-
    % Title Tag: Defining the title of the page
    Title = 'My Web Blog - HTML and Prolog Tutorial',

    % Content and anchor tags
    Content = '<h1>Welcome to My Blog!</h1> 
               <p>Learn about <a href="https://www.example.com" title="Click here to read more about HTML">HTML</a> and how it works in Prolog.</p>',

    % Complete HTML page with title and content
    format('Content-Type: text/html~n~n'),
    format('<html>~n'),
    format('<head>~n'),
    format('<title>~w</title>~n', [Title]),
    format('</head>~n'),
    format('<body>~n'),
    format('~w~n', [Content]),
    format('</body>~n'),
    format('</html>~n').

% To run the program, use the query:
% ?- generate_html.
