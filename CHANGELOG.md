# Changelog

## [0.1.0](https://github.com/2martens/cloud-configuration/compare/v0.0.1...v0.1.0) (2024-03-24)


### Added

* Add timetable helm chart and argo application ([36686dc](https://github.com/2martens/cloud-configuration/commit/36686dcf81726d2f981a8cdc54e1a88c8680e9bd))
* **cluster_setup:** Use secret in multiple namespaces ([2b606fb](https://github.com/2martens/cloud-configuration/commit/2b606fb1693a673699b03d79cd3d9a79e9e533c1))
* **template:** Add ability to configure volumes ([da37575](https://github.com/2martens/cloud-configuration/commit/da375757eaed5f606347e7d58d2c14b5759a29c7))
* **template:** Add support for leader election ([7b31ab7](https://github.com/2martens/cloud-configuration/commit/7b31ab7a2853b94dbf98c162466dc7b2662370e9))


### Changed

* **prometheus:** Add ingress for grafana ([e171a62](https://github.com/2martens/cloud-configuration/commit/e171a62f34ab1f586c886e177d62228b06a9687c))
* **prometheus:** Enable thanos for prometheus on monitoring as well ([15661ee](https://github.com/2martens/cloud-configuration/commit/15661eee3fbe62fbb60dba3f4f8200bf961f4ee4))
* Set security context by default to restrictive values ([d94fa69](https://github.com/2martens/cloud-configuration/commit/d94fa6945941c23b1ab66a9dadc07dc04d28913f))
* Set security context by default to restrictive values for argo deployments ([1cf2c14](https://github.com/2martens/cloud-configuration/commit/1cf2c14ee729c25ad622b0a35fe81a80c096815c))
* **template:** Set security context by default to restrictive values ([2bc1d19](https://github.com/2martens/cloud-configuration/commit/2bc1d19ee19cb7e997a1cbe33863faedb607be87))
* **thanos:** Add thanos endpoint of monitoring cluster ([0b48a5a](https://github.com/2martens/cloud-configuration/commit/0b48a5a0abd45e5c1e2b91cf5e5974ac991b708d))
* **wahlrecht:** Add Kafka back ([9d7a883](https://github.com/2martens/cloud-configuration/commit/9d7a88391a96b44d8006fdc592d555662867722d))


### Fixed

* Add writable volume to /etc/kafka ([b49c5ca](https://github.com/2martens/cloud-configuration/commit/b49c5ca205fbd43cfa53cac1894da98d29513c46))
* Allow timetable namespace ([d0d80e3](https://github.com/2martens/cloud-configuration/commit/d0d80e35dd4c6813ba1e0a4ca522cfac4796718b))
* **argocd:** Fix URL of cloud configuration ([92831a5](https://github.com/2martens/cloud-configuration/commit/92831a5130ff40481716219be58c84cbaa443c1c))
* Change path to repositories ([b79b661](https://github.com/2martens/cloud-configuration/commit/b79b661aba23115730d1ab7dc22991ba1b5eec8e))
* **cluster_setup:** Always use global namespace in helpers ([1dcbf2b](https://github.com/2martens/cloud-configuration/commit/1dcbf2ba7bd837a903044d5327975b7c2f77c95c))
* **cluster_setup:** Pass correct context to helpers ([65c2f40](https://github.com/2martens/cloud-configuration/commit/65c2f403e3aef61306cff7fc9a54b5a364e7696d))
* **configserver:** Mount writable volume for tmp dir ([322aa6e](https://github.com/2martens/cloud-configuration/commit/322aa6ede96ff9cbf1fd175cce4f0fa33c5d01ba))
* **configserver:** Update template chart ([319ecf7](https://github.com/2martens/cloud-configuration/commit/319ecf7171b6b1617ce2493ab4d43c592fe6c3ca))
* Create timetable namespace ([eb87253](https://github.com/2martens/cloud-configuration/commit/eb8725389e3211065af13d17c23ef504e87e7e75))
* Don't create timetable namespace (done by cluster setup) ([aa49e6e](https://github.com/2martens/cloud-configuration/commit/aa49e6e3cc037bdebbd34bb70a2f02af5abdc476))
* Download configs again from git.2martens.de ([968f568](https://github.com/2martens/cloud-configuration/commit/968f568792c39972872e0d7f311185af6b9a7c1d))
* **hcloud:** Add hcloud csi driver to monitoring ([d8cfc3a](https://github.com/2martens/cloud-configuration/commit/d8cfc3a8a94637a1baaa08a2db8e3281204bec8e))
* **hcloud:** Fix name of application ([8594617](https://github.com/2martens/cloud-configuration/commit/8594617a87ab06a89129f757e016c893600054f6))
* **kafka:** Add writable volume to /var/log/kafka ([5258897](https://github.com/2martens/cloud-configuration/commit/5258897530d97794e16fe9e5d3f4a59fffdc0ac7))
* **kafka:** Increase memory limit to 1Gi ([6bfb4b2](https://github.com/2martens/cloud-configuration/commit/6bfb4b2912ad1ae2ee7173f34d36ffee32535216))
* **kafka:** Reduce retention time to 2 minutes ([a003c00](https://github.com/2martens/cloud-configuration/commit/a003c00b7519b400d9579f9ea87f80d95fb5cf42))
* **kafka:** Update template chart ([72ad9f7](https://github.com/2martens/cloud-configuration/commit/72ad9f7d3d61b036c271ffd8bfd2f177dd035c08))
* **kafka:** Update values ([341bcc2](https://github.com/2martens/cloud-configuration/commit/341bcc23c680ddd66a92d8a52edea5c60a1b44d2))
* **kafka:** Update values file ([d546986](https://github.com/2martens/cloud-configuration/commit/d5469863e9d0651d4e63d114b34e9b3073f8b87e))
* **prometheus:** Provide storage handle ([b441481](https://github.com/2martens/cloud-configuration/commit/b4414816bc3cdab235b385fc38257f0f8fd59cc6))
* **prometheus:** Use correct ingress class name ([d546168](https://github.com/2martens/cloud-configuration/commit/d5461683216b8a410a07ac99defc138fe4ee9313))
* **prometheus:** Use correct IP for monitoring cluster and enable prometheus adapter ([5c269c7](https://github.com/2martens/cloud-configuration/commit/5c269c7118ce58fbdd542bd58f625b3931a2161d))
* Search config on github ([efbc3af](https://github.com/2martens/cloud-configuration/commit/efbc3af35366b459d431bc82ff267fa8ef23f25b))
* **template:** Add missing permissions for leader role ([a598fbe](https://github.com/2martens/cloud-configuration/commit/a598fbed4d9740d5d7c73833510e32164df81c61))
* **template:** Fix whitespace problem ([f96ab5e](https://github.com/2martens/cloud-configuration/commit/f96ab5e3866bf87dea4f6b474c57fbfa57516419))
* **template:** Mount emptyDir volume for tmp directory ([8a3fd6f](https://github.com/2martens/cloud-configuration/commit/8a3fd6f610d547ca6e7e1769b5d9d0cfdf8b0bed))
* **template:** Move leader role template to root folder ([4dc3d72](https://github.com/2martens/cloud-configuration/commit/4dc3d724850a9d4c4eeb84fe8bd2bdfb510d2802))
* **thanos:** Reduce polling frequency ([8accf1c](https://github.com/2martens/cloud-configuration/commit/8accf1c5d51c2242cee1285966d072887d5806ac))
* **thanos:** Remove receive ingestor endpoint ([2eedc90](https://github.com/2martens/cloud-configuration/commit/2eedc908713eae619287d7a5f5dec0bee844373c))
* **thanos:** Remove useless parts ([d761291](https://github.com/2martens/cloud-configuration/commit/d761291d53a0c4b9e967f85da22b6b07f05eaca8))
* **thanos:** Use correct name for secret ([420ba84](https://github.com/2martens/cloud-configuration/commit/420ba8436628dcd031538d884794717d97935800))
* **thanos:** Use correct port for thanos query ([3f1534e](https://github.com/2martens/cloud-configuration/commit/3f1534e5947e4331cbcb217d29ff24dcfdfd075a))
* **thanos:** Use routable endpoint ([f4b86f4](https://github.com/2martens/cloud-configuration/commit/f4b86f4e9d68ec60f9a7f710c200b5f717966042))
* **timetable:** Add missing ingress prefix for stations ([3598f75](https://github.com/2martens/cloud-configuration/commit/3598f753345618cfb1f8e6899074cffc6a3a4871))
* **timetable:** Add missing permissions for leader role ([98c36cd](https://github.com/2martens/cloud-configuration/commit/98c36cd5c3048d9edfc4735ddcec15d2c443bcd2))
* **timetable:** Add missing role for leader election ([394c583](https://github.com/2martens/cloud-configuration/commit/394c583f2a6bdf337307ed072363fdea7368da47))
* **timetable:** Enable leader election ([7efcf8e](https://github.com/2martens/cloud-configuration/commit/7efcf8e1621ab829159710c695f2da1127ceb1cf))
* **timetable:** Remove trailing slash for api docs ([6388d5a](https://github.com/2martens/cloud-configuration/commit/6388d5a0cbda41a8a3b1f961d07527739648e731))
* **timetable:** Update template chart ([ba3b83a](https://github.com/2martens/cloud-configuration/commit/ba3b83a7c317b0463f16315a4a02d9f5cb44bc4e))
* **timetable:** Update template chart ([2c45ae3](https://github.com/2martens/cloud-configuration/commit/2c45ae36efb9ce91c3fa7f8456ce061c73d10fc7))
* Use writable volume for tmp dir ([5718146](https://github.com/2martens/cloud-configuration/commit/5718146c0d8013301e494da66f24ea50352550c2))
* **vault:** Add vault support to monitoring cluster ([4fcea19](https://github.com/2martens/cloud-configuration/commit/4fcea19d400f5be0117d92c64d94b5f606f52c0f))
* **wahlrecht:** Don't use kafka ([44b18d9](https://github.com/2martens/cloud-configuration/commit/44b18d93930c344ba3947ae0193dd58fe50e90f5))
* **wahlrecht:** Remove memory leak ([9d7a883](https://github.com/2martens/cloud-configuration/commit/9d7a88391a96b44d8006fdc592d555662867722d))
* **wahlrecht:** Update template chart ([d94a885](https://github.com/2martens/cloud-configuration/commit/d94a8859347a46c43939d2ae8b6773745e4a24cf))
* **zookeeper:** Add writable volume to /var/log/kafka ([2ab511e](https://github.com/2martens/cloud-configuration/commit/2ab511ecb357ba938eb16b39af9fee9d7b125261))
* **zookeeper:** Update template chart ([22ef3b6](https://github.com/2martens/cloud-configuration/commit/22ef3b63294edb4c6015d757bb5c9b6c714a43bf))
