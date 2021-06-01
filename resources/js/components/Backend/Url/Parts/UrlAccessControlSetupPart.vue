<template>
    <div v-if="isComponentLoading == false">
        <div
            class="card checkout-shipping-form px-30 pt-2 pb-0 border-color mt-lg-0 radius-md mt-30 ">
            <div class="card-header border-bottom-0 align-content-start pb-sm-0 pb-1 px-0">
                <h4 class="fw-500">Access Control Setup</h4>
            </div>
            <div class="card-body px-0 pb-0 pt-0">
                <div class="edit-profile__body">
                    <form>
                        <div class="form-group">
                            <label for="">Enable Access Control</label>
                            <div class="custom-control custom-switch switch-primary switch-md ">
                                <input v-model="accessRules.enable_access_control"
                                       :checked="accessRules.enable_access_control"
                                       type="checkbox" class="custom-control-input" id="switch-s1">
                                <label class="custom-control-label" for="switch-s1"></label>
                            </div>
                        </div>
                        <div v-show="accessRules.enable_access_control">
                            <div>
                                <label class="typo__label" for="ajax">Select Countries</label>
                                <multiselect v-model="selectedCountries" id="ajax" label="name" track-by="code"
                                             placeholder="Type to search" open-direction="bottom" :options="countries"
                                             :multiple="true" :searchable="true" :loading="isLoading"
                                             :internal-search="false" :clear-on-select="false" :close-on-select="false"
                                             :options-limit="300" :limit="300" :limit-text="limitText" :max-height="600"
                                             :show-no-results="false" :hide-selected="true" @search-change="asyncFind">
                                    <template slot="tag" slot-scope="{ option, remove }"><span
                                        class="custom__tag"><span>{{ option.name }}</span><span
                                        class="custom__remove" @click="remove(option)">❌</span></span></template>
                                    <template slot="clear" slot-scope="props">
                                        <div class="multiselect__clear" v-if="selectedCountries.length"
                                             @mousedown.prevent.stop="clearAll(props.search)"></div>
                                    </template>
                                    <span
                                        slot="noResult">Oops! No elements found. Consider changing the search query.</span>
                                </multiselect>
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="Device">Device</label>
                                <select v-model="accessRules.device" name="" class="form-control" id="Device">
                                    <option value="all">All</option>
                                    <option value="Mobile">Mobile</option>
                                    <option value="Tablet">Tablet</option>
                                    <option value="Computer">Computer</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="OS">OS</label>
                                <select v-model="accessRules.os" name="" class="form-control" id="OS">
                                    <option value="all">All</option>
                                    <option value="Windows">Windows</option>
                                    <option value="Mac OS">Mac OS</option>
                                    <option value="Linux">Linux</option>
                                    <option value="Ubuntu">Ubuntu</option>
                                    <option value="iPhone">iPhone</option>
                                    <option value="iPad">iPad</option>
                                    <option value="Android">Android</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="Browser">Browser</label>
                                <select v-model="accessRules.browser" name="" class="form-control" id="Browser">
                                    <option value="all">All</option>
                                    <option value="Internet Explorer">Internet Explorer</option>
                                    <option value="Firefox">Firefox</option>
                                    <option value="Chrome">Chrome</option>
                                    <option value="Edge">Edge</option>
                                    <option value="Opera">Opera</option>
                                    <option value="Netscape">Netscape</option>
                                    <option value="Maxthon">Maxthon</option>
                                    <option value="Konqueror">Konqueror</option>
                                    <option value="UC Browser">UC Browser</option>
                                    <option value="Handheld Browser">Handheld Browser</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="max_visit_single_ip">Maximum Visit From One IP ( set 0 for unlimited
                                    visit) </label>
                                <input type="number" min="0" class="form-control" id="max_visit_single_ip"
                                       v-model="accessRules.max_visit_single_ip">
                            </div>
                            <div class="form-group">
                                <label for="chooseDomain">Block Traffic Responsive Type</label>
                                <select v-model="accessRules.action_type" class="form-control px-15"
                                        id="chooseDomain">
                                    <option value="redirect">Redirect</option>
                                    <option value="message">Show Message</option>
                                </select>
                            </div>
                            <div class="form-group" v-if="accessRules.action_type == 'redirect'">
                                <label for="end_goad_redirect_url">Set Redirect Url</label>
                                <input type="text" id="end_goad_redirect_url"
                                       v-model="accessRules.redirect_url"
                                       placeholder="Redirect Url" class="form-control">
                            </div>
                            <div class="form-group" v-if="accessRules.action_type == 'message'">
                                <label for="end_goad_show_message"> Show Message</label>
                                <textarea name="form-control" class="form-control"
                                          v-model="accessRules.message" id="end_goad_show_message" cols="10"
                                          rows="5"></textarea>
                            </div>
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
import Multiselect from 'vue-multiselect'
import "vue-multiselect/dist/vue-multiselect.min.css";

export default {
    name: "UrlAccessControlSetupPart",
    props: ['url'],
    components: {Multiselect},

    data() {
        return {
            isComponentLoading: false,
            isLoading: false,
            accessRules: {
                action_type: false,
                redirect_url: false,
                message: false,
                device: '',
                browser: '',
                os: '',
                country: '',
                max_visit_single_ip: 1,
            },
            value: null,
            options: ['Computer', 'Mobile', 'Tablet'],
            selectedCountries: [],
            countries: [],
        }
    },
    watch: {},
    created() {
        this.isComponentLoading = true;
        this.getAccessSettings();
        this.loadCountry('');
    },
    methods: {
        limitText(count) {
            return `and ${count} other countries`
        },
        asyncFind(query) {
            this.isLoading = true
            this.loadCountry(query);
        },
        loadCountry(query) {
            axios.get(`/find/country?query=${query}`).then(response => {
                this.countries = response.data.data
                this.isLoading = false
            })
        },
        clearAll() {
            this.selectedCountries = []
        },
        getAccessSettings() {
            let urlID = this.$route.params.url;
            axios.get(`/url/${urlID}/get-access-settings`)
                .then(response => {
                    if (response.data.success) {
                        this.accessRules = response.data.access_settings;
                        if (response.data.access_settings.country != null)
                            this.selectedCountries = JSON.parse(response.data.access_settings.country);
                        this.isComponentLoading = false;

                    }
                })
                .catch(err => {
                    console.error(err)
                })
        },
        saveChanges() {


            this.accessRules.country = this.selectedCountries;

            axios.post(`/url/${this.url.id}/access-control/update`, this.accessRules)
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
                    query: {step: '5'}
                },
            );
        },
        previousStep() {
            this.$router.push({
                    name: 'url-edit',
                    params: {url: this.$route.params.url},
                    query: {step: '3'}
                },
            );
        }
    }
}
</script>

<style>
label.custom-control-label {
    cursor: pointer;
}

span.custom__tag {
    padding: 5px;
    background: #e3e6ef;
    border-radius: 10px;
}

span.custom__tag {
    padding: 5px;
    background: #e3e6ef;
    border-radius: 10px;
    margin-bottom: 10px !important;
    display: inline-block;
    margin-right: 10px;
}

span.custom__remove {
    cursor: pointer;
}

.multiselect--active .multiselect__input, .multiselect--active .multiselect__single {
    padding: 8px !important;
    border: 1px solid #e3e6ef !important;
}

span.custom__remove {
    cursor: pointer;
    font-size: 10px;
    margin-left: 4px;
}
</style>
