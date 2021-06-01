<template>
    <div v-if="url != null">
        <div
            class="card checkout-shipping-form px-30 pt-2 pb-0 border-color mt-lg-0 radius-md mt-30 ">
            <div class="card-header border-bottom-0 align-content-start pb-sm-0 pb-1 px-0">
                <h4 class="fw-500">Enable Custom Domain</h4>
            </div>
            <div class="card-body px-0 pb-0 pt-0">
                <div class="edit-profile__body">
                    <form>
                        <div class="form-group">
                            <label for="">Make Link with Personal Domain</label>
                            <div class="custom-control custom-switch switch-primary switch-md ">
                                <input v-model="url.enable_custom_domain" :checked="url.enable_custom_domain"
                                       type="checkbox" class="custom-control-input" id="switch-s1">
                                <label class="custom-control-label" for="switch-s1"></label>
                            </div>
                        </div>
                        <div class="form-group" v-show="url.enable_custom_domain">
                            <label for="chooseDomain">Choose Domain</label>
                            <select v-model="url.domain_id" class="form-control px-15" id="chooseDomain">
                                <option v-for="domain in domains" :value="domain.id">{{ domain.url }}</option>
                            </select>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="d-flex pt-40 justify-content-between">
            <div
                @click="previousStep"
                class="btn btn-light btn-default btn-squared text-capitalize text-dark"><i
                class="mr-10 ml-0 las la-arrow-left"></i> Previous
            </div>
            <div
                @click="saveChanges"
                class="btn btn-primary btn-default btn-squared text-capitalize text-white">Save
                & Next<i class="ml-10 mr-0 las la-arrow-right"></i></div>
        </div>
    </div>
</template>

<script>
export default {
    name: "UrlDomainSetupPart",
    props: ['url'],
    data() {
        return {
            domains: []
        }
    },
    mounted() {
        // setTimeout(function (evt) {
        //     // $("select").select2({
        //     //     minimumResultsForSearch: -1
        //     // });
        // }.bind(this), 500);

        // load domains
        this.getApprovedDomains();

    },
    methods: {
        getApprovedDomains() {
            axios.get(`/domains/all/approved`)
                .then(response => {
                    this.domains = response.data.domains;
                })
                .catch(err => {
                    this.$toast.error("Request Failed.");
                })
        },
        saveChanges() {
            axios.post(`/url/${this.url.id}/update`, this.url)
                .then(response => {
                    if (response.data.success) {
                        this.nextStep();
                    }
                })
                .catch(err => {
                    console.error(err)
                })
        },
        nextStep() {
            this.$router.push({
                    name: 'url-edit',
                    params: {url: this.$route.params.url},
                    query: {step: '4'}
                },
            );
        },
        previousStep() {
            this.$router.push({
                    name: 'url-edit',
                    params: {url: this.$route.params.url},
                    query: {step: '2'}
                },
            );
        }
    }
}
</script>

<style scoped>
label.custom-control-label {
    cursor: pointer;
}
</style>
