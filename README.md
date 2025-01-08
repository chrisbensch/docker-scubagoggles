<div align='center' style="margin:0;" id="user-content-toc">
  <ul>
    <h1 style="display: inline-block;">ScubaGoggles</h1>
  </ul>
</div>
<h2 align='center' style="margin:0;">GWS Secure Configuration Baseline Assessment Tool </h2>

Developed by CISA, ScubaGoggles is an assessment tool that verifies a Google
Workspace (GWS) organization's configuration conforms to the policies
described in the Secure Cloud Business Applications
([SCuBA](https://cisa.gov/scuba)) Secure Configuration
Baseline [documents](scubagoggles/baselines/README.md).

> [!WARNING]
> This tool is in an alpha state and in active development. At this time, outputs could be incorrect and should be reviewed carefully.

### Build
```
git clone https://github.com/chrisbensch/docker-scubagoggles && cd docker-scubagoggles
docker build . -t chrisbensch/docker-scubagoggles
```

### Run
```
docker run --rm -it -v /path/to/scuba/config:/home/scuba/.scubagoggles -v /path/to/scuba/results:/ScubaResults  chrisbensch/docker-scubagoggles
```

