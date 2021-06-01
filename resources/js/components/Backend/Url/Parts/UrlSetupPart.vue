<template>
    <div>
        <form @submit.prevent="saveFormData">
            <div
                class="card checkout-shipping-form px-30 pt-2 pb-0 border-color mt-lg-0 radius-md mt-30 ">
                <div class="card-header border-bottom-0 align-content-start pb-sm-0 pb-1 px-0">
                    <h4 class="fw-500">Enter Url Information</h4>
                </div>
                <div class="card-body px-0 pb-0 pt-0">
                    <div class="edit-profile__body">
                        <div class="form-group">
                            <label for="name1">Name</label>
                            <input required v-model="urlParams.name" type="text" class="form-control" id="name1">
                        </div>
                        <div class="form-group">
                            <label for="url">Url</label>
                            <input required v-model="urlParams.old_url" id="url" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="url_details">Details</label>
                            <textarea v-model="urlParams.description" id="url_details" name="url_details"
                                      class="form-control"
                                      cols="30"
                                      rows="4"></textarea></div>
                    </div>
                </div>
            </div>
            <div class="d-flex pt-40 justify-content-md-end justify-content-center">
                <button type="button"
                        @click="saveFormData"
                        class="btn btn-primary btn-default btn-squared text-capitalize text-white">Save
                    & Next<i class="ml-10 mr-0 las la-arrow-right"></i></button>
            </div>
        </form>
    </div>
</template>


<script>
export default {
    name: "UrlSetupPart",
    props: ['url'],
    data() {
        return {
            urlParams: {
                name: null,
                old_url: null,
                description: null
            }
        }
    },
    mounted() {
        if (this.url != null) {
            this.urlParams = this.url;
        }
    },
    watch: {
        'url': {
            immediate: true,
            handler(newVal) {
                if (newVal?.id) {
                    this.urlParams = this.url;
                }
            }
        },
    },

    methods: {
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
        saveFormData() {
            if (this.url?.id) {
                this.saveChanges();
            } else {
                this.createNewUrl();
            }
        },
        createNewUrl() {
            axios.post(`/url/store`, this.urlParams)
                .then(res => {
                    this.url = res.data.url;
                    this.nextStep();
                }).catch(error => {
                console.log(error)
            })
        },
        nextStep() {
            this.$router.push({
                    name: 'url-edit',
                    params: {url: this.url.id},
                    query: {step: '2'}
                },
            );
        }
    }
}
</script>

<style scoped>

</style>
