# Deploy-a-node-js-application-push-into-the-dockerhub-registry
To build a docker image using dockerfile and deploy a node docker image on another machine and push into dockerhub registry.

![Alt text](deployArchi.png)

**_let see examples of How we do a deployment..._**

- Launch a two ec2 machine for this project.....I attached a terraform file to create a machines.

- Using ssh login into master machine....Once check, is everything installed ? What we mentioned in the user data.
   java and jenkins...

![image](./screeshot/2.png)
![image](./screeshot/1.png)

- Using the ip of master machine trigeer on web...

   ![image](./screeshot/3.png)

- Then add a slave node on master jenkins..

   ![image](./screeshot/4.png)
   ![image](./screeshot/5.png)

- Give a proper username, ssh private key When connect a slave node...Here I added a slave node.

   ![image](./screeshot/6.png)

- Create a new newstyle project.....I gave the name as *docker_image_deploy*

   ![image](./screeshot/7.png)

- Now, We have to mentioned where we should deploy.....So, **Restrict where this project can be run** we should mentiond the slave node label.

   ![image](./screeshot/8.png)

- I have a project source code on my github repo.....Give the repository information and credentials.

   ![image](./screeshot/9.png)
   ![image](./screeshot/10.png)

- On Build step,

    ![image](./screeshot/11.png)
    ![image](./screeshot/12.png)

- Build a project.....successfully deploy a docker images and container on slave machine.

    ![image](./screeshot/13.png)
    ![image](./screeshot/14.png)

- Now, Let check on our slave machine ...

    ![image](./screeshot/15.png)
    
> Both image and container launched successfully on slave machine...         

>                                               Thankyou....
    
