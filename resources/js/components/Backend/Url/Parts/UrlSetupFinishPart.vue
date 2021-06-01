<template>
    <div v-if="url != null">
        <div
            class="card checkout-shipping-form px-30 pt-2 pb-0 border-color mt-lg-0 radius-md mt-30 ">
            <div class="card-header border-bottom-0 align-content-start pb-sm-0 pb-1 px-0">
                <h4 class="fw-500">Link Overview</h4>
            </div>
            <div class="card-body px-0 pb-0 pt-0 mt-2 mb-3">
                <div class="edit-profile__body">
                    <table class="table table-borderless table-striped">
                        <tr>
                            <td width="250px">Name</td>
                            <td width="20px">:</td>
                            <td>{{ url.name }}</td>
                        </tr>

                        <tr>
                            <td>New Url</td>
                            <td>:</td>
                            <td>{{ url.new_url }}</td>
                        </tr>

                        <tr>
                            <td>Old Url</td>
                            <td>:</td>
                            <td>{{ url.old_url }}</td>
                        </tr>

                        <tr>
                            <td>Link Expirable</td>
                            <td>:</td>
                            <td>{{ url.expirable ? 'Yes' : 'No' }}</td>
                        </tr>
                        <tr v-show="url.expirable">
                            <td>Expire Time</td>
                            <td>:</td>
                            <td>{{ url.expire_at }}</td>
                        </tr>
                        <tr v-show="url.enable_goal">
                            <td>Goal</td>
                            <td>:</td>
                            <td>{{ url.goal }}</td>
                        </tr>
                        <tr>
                            <td>Custom Domain Enabled</td>
                            <td>:</td>
                            <td>{{ url.enable_custom_domain ? 'Yes' : 'No' }}</td>
                        </tr>
                        <tr v-show="url.enable_custom_domain">
                            <td>Domain Name</td>
                            <td>:</td>
                            <td>{{ url.domain != null ? url.domain.url : '' }}</td>
                        </tr>


                    </table>
                </div>
            </div>
        </div>
        <div class="d-flex pt-40 justify-content-between">
            <div
                @click="previousStep"
                class="btn btn-light btn-default btn-squared text-capitalize text-dark"><i
                class="mr-10 ml-0 las la-arrow-left"></i> Previous
            </div>
            <router-link to="/urls"
                         class="btn btn-primary btn-default btn-squared text-capitalize text-white">Save & Exit
                <i class="ml-10 mr-0 las la-check"></i></router-link>
        </div>
    </div>
</template>

<script>
export default {
    name: "UrlSetupFinishPart",
    props: ['url'],
    methods: {
        finishSetup() {
            this.$router.push({
                    name: 'urls',
                },
            );
        },
        previousStep() {
            this.$router.push({
                    name: 'url-edit',
                    params: {url: this.$route.params.url},
                    query: {step: '4'}
                },
            );
        }
    }
}
</script>

<style scoped>

</style>
