<template>
    <div v-if="url != null">
        <div
            class="card checkout-shipping-form px-30 pt-2 pb-0 border-color mt-lg-0 radius-md mt-30 ">
            <div class="card-header border-bottom-0 align-content-start pb-sm-0 pb-1 px-0">
                <h4 class="fw-500">Time Settings</h4>
            </div>
            <div class="card-body px-0 pb-0 pt-0">
                <div class="edit-profile__body">
                    <form>
                        <div class="form-group">
                            <label for="expirable">Enable Link Expiration</label>
                            <div class="custom-control custom-switch switch-primary switch-md ">
                                <input v-model="url.expirable" :checked="url.expirable" type="checkbox"
                                       class="custom-control-input"
                                       id="expirable">
                                <label class="custom-control-label" for="expirable"></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <transition name="fade">
                                <div v-show="url.expirable">
                                    <label>Expire Time</label>
                                    <datetime v-model="url.expire_at" value-zone="UTC+6" id="expire_time"
                                              input-class="form-control form-control-solid form-control-lg"
                                              type="datetime" auto-continue></datetime>

                                </div>
                            </transition>

                            <div class="card-header border-bottom-0 align-content-start pb-sm-0 pb-1 px-0 mt-4">
                                <h4 class="fw-500">Goal Settings</h4>
                            </div>
                            <div class="form-group mt-2">
                                <label for="enable_goal">Enable Goal</label>
                                <div class="custom-control custom-switch switch-primary switch-md ">
                                    <input v-model="url.enable_goal" :checked="url.enable_goal" type="checkbox"
                                           class="custom-control-input"
                                           id="enable_goal">
                                    <label class="custom-control-label" for="enable_goal"></label>
                                </div>
                            </div>
                            <transition name="fade">
                                <div v-show="url.enable_goal">
                                    <div class="form-group">
                                        <label for="set_goal">Set Goal</label>
                                        <input type="number" step="1" id="set_goal" v-model="url.goal"
                                               class="form-control">
                                    </div>
                                </div>

                            </transition>
                            <div class="form-group">
                                <label for="chooseDomain">Goal Complete Action</label>
                                <select v-model="url.end_goal_action_type" class="form-control px-15"
                                        id="chooseDomain">
                                    <option value="redirect">Redirect</option>
                                    <option value="message">Show Message</option>
                                </select>
                            </div>

                            <div class="form-group" v-if="url.end_goal_action_type == 'redirect'">
                                <label for="end_goad_redirect_url">Set Goal Redirect Url</label>
                                <input type="text" id="end_goad_redirect_url"
                                       v-model="url.end_goal_redirect_url"
                                       placeholder="Redirect Url" class="form-control">
                            </div>
                            <div class="form-group" v-if="url.end_goal_action_type == 'message'">
                                <label for="end_goad_show_message">Goal Complete Message</label>
                                <textarea name="form-control" class="form-control"
                                          v-model="url.end_goal_message" id="end_goad_show_message" cols="10"
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
export default {
    name: "UrlAdditionalSetupPart",
    props: ['url'],
    methods: {
        nextStep() {
            this.$router.push({
                    name: 'url-edit',
                    params: {url: this.$route.params.url},
                    query: {step: '3'}
                },
            );
        },

        previousStep() {
            this.$router.push({
                    name: 'url-edit',
                    params: {url: this.$route.params.url},
                    query: {step: '1'}
                },
            );
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
    }
}
</script>

<style scoped>
label.custom-control-label {
    cursor: pointer;
}

.fade-enter-active, .fade-leave-active {
    transition: opacity .5s;
}

.fade-enter, .fade-leave-to /* .fade-leave-active below version 2.1.8 */
{
    opacity: 0;
}
</style>
