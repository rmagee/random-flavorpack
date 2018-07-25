FROM registry.gitlab.com/serial-lab/serialbox

RUN mkdir -p /usr/src/app/random_flavorpack
COPY . /usr/src/app/random_flavorpack
ENV PYTHONPATH $PYTHONPATH:/usr/src/app/random_flavorpack
RUN echo $PYTHONPATH
RUN cd /usr/src/app/
COPY random_flavorpack/tests/settings.py settings.py
EXPOSE 80
CMD ["supervisord", "-n"]
RUN python manage.py collectstatic --noinput
 
