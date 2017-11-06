# Copyright (c) General Electric Company, 2017.  All rights reserved.

FROM rabbitmq:3-management

# set up the folder structure
RUN mkdir /rt106

# install the custom code for the app (COPY does NOT set ownership based on USER?)
ADD rabbit-server.sh rabbitmq.config /rt106/

# manage permissions
RUN chmod +x /rt106/rabbit-server.sh

CMD ["/rt106/rabbit-server.sh"]
