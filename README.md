# Assignment 1

1. Using alpine as a base Docker image, write a docker file that configures nginx and serves hello world static page.
2. Create an nginx proxy that routes the requests to the above docker container.


## Steps to run the container
1. Move the <code>nginx.conf</code> file to <code>/etc/nginx/conf.d</code> directory on linux.

2. Move to <code>staticpage</code> directory page and build the docker image:<br>
<code> docker build -t staticpage . </code>

3. Run the docker image <code>staticpage</code>:<br>
<code>docker run -p 3000:80 staticpage</code>

## Output
This image shows a normal docker container running at http://localhost:3000 <br> <br>
![image](https://user-images.githubusercontent.com/55397457/153576453-51402ba8-c2bc-4c64-b19e-6ff03a1db654.png)

This image shows nginx proxy directing request from http://localhost:80 to docker container http://localhost:3000 <br> <br>
![image](https://user-images.githubusercontent.com/55397457/153576549-07b3d250-8092-466d-a41c-277d56612afe.png)
