FROM ubuntu:22.04
LABEL "maintainer"="NaturalSelect<2145973003@qq.com>"
WORKDIR "/root"
RUN mkdir -p ./base
WORKDIR "/root/base"
COPY "install_dep.sh" "./install_dep.sh"
COPY "entry_point.sh" "./entry_point.sh"
RUN "./install_dep.sh"
ENV "XMODIFIERS"="@im=ibus"
ENV "QT_IM_MODULE"="ibus"
ENV "GTK_IM_MODULE"="ibus"
ENTRYPOINT [ "./entry_point.sh" ]