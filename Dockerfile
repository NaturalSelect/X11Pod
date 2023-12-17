FROM ubuntu:22.04
LABEL "maintainer"="NaturalSelect<2145973003@qq.com>"
COPY "install_dep.sh" "/tmp/install_dep.sh"
COPY "entry_point.sh" "/tmp/entry_point.sh"
WORKDIR "/tmp"
RUN "./install_dep.sh"
ENTRYPOINT [ "./entry_point.sh" ]