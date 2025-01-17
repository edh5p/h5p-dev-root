init:
	npm i -g h5p

build-timeline-image:
	cp h5p-timeline-repos repos
	docker build . -t timeline
	rm repos

run-timeline-image: build-timeline-image
	bash ./docker_run_with_all_local_libs_mounted.sh timeline 8080


build-vt360-image:
	cp h5p-vt360-repos repos
	docker build . -t vt360
	rm repos

run-vt360-image: build-vt360-image
	bash ./docker_run_with_all_local_libs_mounted.sh vt360 8080

build-course-presentation-image:
	cp h5p-course-presentation-repos repos
	docker build . -t course-presentation
	rm repos

run-course-presentation-image: build-course-presentation-image
	bash ./docker_run_with_all_local_libs_mounted.sh course-presentation 8081

build-topic-map-image:
	cp h5p-topic-map-repos repos
	docker build . -t topic-map
	rm repos

run-topic-map-image: build-topic-map-image
	bash ./docker_run_with_all_local_libs_mounted.sh topic-map 8082

update-all-repos:
	./update-all-repos.sh
