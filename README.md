<img width="206" alt="image" src="https://github.com/lbrezgin/test-guru/assets/90979712/bb5e1f83-4473-4761-9b96-bb8ad28271c7">

<h1>Test Guru</h1>

<p>Test Guru - a simple website developed using Ruby on Rails as a learning project at the online school <a href="https://thinknetica.com" target="_blank">Thinknetica.</a></p>
<h2>General Website Requirements:</h1>

<ol>
    <li>User registration and authentication</li>
    <li>Website localized in three languages – Russian, Latvian, English</li>
    <li>Two types of users: administrator and regular user</li>
    <li>Ability to submit feedback about the website</li>
</ol>

<h2>Administrator:</h2>

<ol>
    <li>Manages tests, questions, answers, awards via an administrator panel. Can create, edit (except awards), delete.</li>
    <li>Tests must be published before users can take them.</li>
    <li>Programmer can assign administrator status.</li>
</ol>

<h2>Regular User:</h2>
    
<ol>
    <li>Can take published tests.</li>
    <li>Receives an email notification about test completion (successful or unsuccessful) and can view their results.</li>
    <li>Can receive awards for passing a test if a specific award is assigned to that test.</li>
</ol>

<h2>Tests:</h2>
    
<ol>
    <li>Test has a title, level, category, time limit (or no time limit).</li>
    <li>Test can have an unlimited number of questions.</li>
    <li>Test is considered passed if user scores 85% or higher.</li>
</ol>

<h2>Questions:</h2>

<ol>
    <li>Question has content.</li>
    <li>Each question is associated with a specific test.</li>
    <li>Question can have up to 4 answers.</li>
</ol>

<h2>Answers:</h2>
    
<ol>
    <li>Answer has content and correctness status (correct/incorrect).</li>
</ol>

<h2>Awards:</h2>

<ol>
    <li>Awards have a title, corresponding image, and criteria that, when met, awards the user.</li>
    <li>User can view all existing awards and their own awards.</li>
</ol>

