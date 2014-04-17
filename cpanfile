requires 'perl', '5.008005';

requires 'Text::Markdown', '>1.0';
requires 'Template', '2.25'; 
on test => sub {
    requires 'Test::More', '0.88';
};
