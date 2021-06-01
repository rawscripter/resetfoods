<template>
<div>
    <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shop-breadcrumb">

                            <div class="breadcrumb-main">
                                <h4 class="text-capitalize breadcrumb-title" >Edit Offer</h4>
                                <div class="breadcrumb-action justify-content-center flex-wrap">
                                 
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
			
			
			<div class="card card-default card-md mb-4">
                                <div class="card-header  py-20">
                                    <h6>Edit Offer</h6>
                                </div>
                                <div class="card-body">
                                    <div class="tab-wrapper">

                                        <div class="atbd-tab tab-horizontal">
                                            <ul class="nav nav-tabs vertical-tabs" role="tablist">

                                                <li class="nav-item">
                                                    <a class="nav-link active" id="tab-v-1-tab" data-toggle="tab" href="#tab-v-1" role="tab" aria-controls="tab-v-1" aria-selected="true">
														<div class="atbd-steps__content active">
															<span class="atbd-steps__icon"><span class="atbd-steps__count">1</span></span>
															<span class="atbd-steps__text">Title <br><small>Configure Survey</small></span>
														</div>
													</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="tab-v-2-tab" data-toggle="tab" href="#tab-v-2" role="tab" aria-controls="tab-v-2" aria-selected="true">
														<div class="atbd-steps__content">
															<span class="atbd-steps__icon"><span class="atbd-steps__count">2</span></span>
															<span class="atbd-steps__text">Answers <br><small>Customize Answers</small></span>
														</div>
													</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" id="tab-v-3-tab" data-toggle="tab" href="#tab-v-3" role="tab" aria-controls="tab-v-3" aria-selected="true">
														<div class="atbd-steps__content">
															<span class="atbd-steps__icon"><span class="atbd-steps__count">3</span></span>
															<span class="atbd-steps__text">Popup <br><small>Confirmation Popup</small></span>
														</div>
													</a>
                                                </li>
												<li class="nav-item">
                                                    <a class="nav-link" id="tab-v-4-tab" data-toggle="tab" href="#tab-v-4" role="tab" aria-controls="tab-v-4" aria-selected="true">
														<div class="atbd-steps__content">
															<span class="atbd-steps__icon"><span class="atbd-steps__count">4</span></span>
															<span class="atbd-steps__text">Payment <br><small>Setup Payment</small></span>
														</div>
													</a>
                                                </li>
												<li class="nav-item">
                                                    <a class="nav-link" id="tab-v-5-tab" data-toggle="tab" href="#tab-v-5" role="tab" aria-controls="tab-v-5" aria-selected="true">
														<div class="atbd-steps__content">
															<span class="atbd-steps__icon"><span class="atbd-steps__count">5</span></span>
															<span class="atbd-steps__text">Terms <br><small>Setup Conditions</small></span>
														</div>
													</a>
                                                </li>



                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane fade show active" id="tab-v-1" role="tabpanel" aria-labelledby="tab-v-1-tab">
                                                    <form>
														<div class="row">
															<div class="col-md-8 mb-25">
																<div class="checkbox-theme-default custom-checkbox ">
																	<input class="checkbox" type="checkbox" id="check-1">
																	<label for="check-1">
																		<span class="checkbox-text">
																			Create Order on WP Shop When User Order On System
																		</span>
																	</label>
																</div>
															</div>
															<div class="col-md-4 mb-25">
																<div class="action-btn">
																	<a href="" class="btn btn-sm btn-primary btn-add">
																		SYNC Product Info From Woocommerce Shop</a>
																</div>
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Select Product</label>
																	<div class="atbd-select">
																		<select name="select-1" id="select-1" class="form-control form-control-default">
																			<option value="">Select Product</option>
																		</select>
																	</div>
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Woocommerce Product ID</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Woocommerce Product Stock</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Woocommerce Product Price</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-12 mb-25">
																<div class="checkbox-theme-default custom-checkbox ">
																	<input class="checkbox" type="checkbox" id="check-2">
																	<label for="check-2">
																		<span class="checkbox-text">
																			Auto Accept Offer When User Submit The Survey
																		</span>
																	</label>
																</div>
															</div>
															<div class="col-md-12 mb-25">
																<div class="checkbox-theme-default custom-checkbox ">
																	<input class="checkbox" type="checkbox" id="check-3">
																	<label for="check-3">
																		<span class="checkbox-text">
																			Pre Checked Terms & Condition
																		</span>
																	</label>
																</div>
															</div>
															<div class="col-md-12 mb-25">
																<label class="">Offer Title</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-12 mb-25">
																<label class="">Offer Text</label>
																<textarea type="text" rows="10" class="form-control form-control-default"></textarea>
															</div>
															<div class="col-md-12"><h3>Send Data to API Url</h3></div>
															<div class="col-md-12">
																<label class="">Available Variables</label>
																<div class="table-responsive">
																	<table class="table table-bordered">																		
																		<tbody>
																			<tr>
																				<td>{$email}</td>
																				<td>{$survey_id}</td>
																				<td>{$firstname}</td>
																				<td>{$lastname}</td>
																			</tr>
																			<tr>
																				<td>{$phone}</td>
																				<td>{$city}</td>
																				<td>{$address}</td>
																				<td>{$zipcode}</td>
																			</tr>
																			<tr>
																				<td>{$gender}</td>
																				<td>{$ip}</td>
																				<td>{$date}</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<small>EXAMPLE: https://domain.com/api.php?id={$survey_id}&email={$email}&number={$phone}</small>
															</div>
															<div class="col-md-12 mb-25">
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-12 mb-25">
																<label class="">Offer Image</label>
																<div class="atbd-upload">
																	<div class="atbd-upload-avatar media-import dropzone-md-s">
																		<p class="color-light mt-0 fs-14">Drop files here to upload</p>
																	</div>
																	<div class="avatar-up">
																		<input type="file" name="upload-avatar-input" class="upload-avatar-input">
																	</div>
																</div>
															</div>
															
														</div>
													</form>
                                                </div>
                                                <div class="tab-pane fade" id="tab-v-2" role="tabpanel" aria-labelledby="tab-v-2-tab">
                                                    <div class="row">
														<div class="col-md-6 mb-25">
																<label class="">Offer Accept Button Text (Yes):</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Offer Reject Button Text (No):</label>
																<input type="text" class="form-control form-control-default">
															</div>
															
													</div>
                                                </div>
                                                <div class="tab-pane fade" id="tab-v-3" role="tabpanel" aria-labelledby="tab-v-3-tab">
                                                    <div class="row">
															<div class="col-md-8 mb-25">
																<div class="checkbox-theme-default custom-checkbox ">
																	<input class="checkbox" type="checkbox" id="check-4">
																	<label for="check-4">
																		<span class="checkbox-text">
																			Enable Popup if user reject the offer
																		</span>
																	</label>
																</div>
															</div>
															<div class="col-md-12 mb-25">
																<label class="">Headline</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Yes Button Text</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">No Button Text</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-12 mb-25">
																<label class="">Details</label>
																<textarea type="text" rows="10" class="form-control form-control-default"></textarea>
															</div>
															<div class="col-md-12 mb-25">
																<label class="">Image</label>
																<div class="atbd-upload">
																	<div class="atbd-upload-avatar media-import dropzone-md-s">
																		<p class="color-light mt-0 fs-14">Drop files here to upload</p>
																	</div>
																	<div class="avatar-up">
																		<input type="file" name="upload-avatar-input" class="upload-avatar-input">
																	</div>
																</div>
															</div>
													</div>
                                                </div>
												<div class="tab-pane fade" id="tab-v-4" role="tabpanel" aria-labelledby="tab-v-4-tab">
                                                    <div class="row">
															<div class="col-md-8 mb-25">
																<div class="checkbox-theme-default custom-checkbox ">
																	<input class="checkbox" type="checkbox" id="check-5">
																	<label for="check-5">
																		<span class="checkbox-text">
																			Enable Popup if user reject the offer
																		</span>
																	</label>
																</div>
															</div>
															<div class="col-md-6 mb-25">
																	<label class="">Theme</label>
																	<div class="atbd-select">
																		<select name="select-1" id="select-1" class="form-control form-control-default">
																			<option value="">Select Theme</option>
																			<option value="1">Theme 1</option>
																			<option value="2">Theme 2</option>
																		</select>
																	</div>
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Amount</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																	<label class="">Currency</label>
																	<div class="atbd-select">
																		<select name="select-1" id="select-1" class="form-control form-control-default">
																			<option value="">Select Currency</option>
																			<option value="1">USD</option>
																			<option value="2">DKK</option>
																			<option value="2">KKR</option>
																		</select>
																	</div>
															</div>
															<div class="col-md-8 mb-25">
																<div class="checkbox-theme-default custom-checkbox ">
																	<input class="checkbox" type="checkbox" id="check-6">
																	<label for="check-6">
																		<span class="checkbox-text">
																			Enable Subscription
																		</span>
																	</label>
																</div>
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Plan Id</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Trail Days:</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Stripe Public Key:</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Stripe Secret Key:</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-12 mb-25">
																<h3>Labels</h3>
															</div>
															
															<div class="col-md-6 mb-25">
																<label class="">Top Heading:</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Heading:</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Card Name:</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Card Number:</label>
																<input type="text" class="form-control form-control-default">
															</div>
															
															<div class="col-md-6 mb-25">
																<label class="">Card CVC:</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Card Expire Month:</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Card Expire Year:</label>
																<input type="text" class="form-control form-control-default">
															</div>
															<div class="col-md-6 mb-25">
																<label class="">Submit Button:</label>
																<input type="text" class="form-control form-control-default">
															</div>
															
													</div>
                                                </div>
												<div class="tab-pane fade" id="tab-v-5" role="tabpanel" aria-labelledby="tab-v-5-tab">
                                                    <div class="row">
														<div class="col-md-6 mb-25">
															<label class="">Terms & Condition Heading</label>
															<input type="text" class="form-control form-control-default">
														</div>
														<div class="col-md-6 mb-25">
															<label class="">Terms Link & Popup Modal Header Text:</label>
															<input type="text" class="form-control form-control-default">
														</div>
														<div class="col-md-12 mb-25">
															<h3>Setup Terms And Condition content</h3>
														</div>
														<div class="col-md-12 mb-25">
															<label class="">TIP: You can add a image by clicking on image icon or by drag drop image.</label>
															<textarea name="message" id="mail-reply-message" class="form-control-lg" placeholder="Type your message..."></textarea>
														</div>
													</div>
                                                </div>
												<div class="row">
													<div class="col-sm-6">
														<button type="button" class="btn btn-primary btn-default btn-squared px-30">Previous</button>
													</div>
													<div class="col-sm-6">
														<button type="button" class="btn btn-primary btn-default btn-squared px-30" style="float:right;">Next</button>
													</div>
												</div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- ends: .card -->
			
			
			

	
</div>
</template>

<script>
export default {
    name: "OffersIndex",
	data() {
        return {
            showFilter: false,
            lists: {
                data: [],
                total: 0,
				totalpages: 0,
                perpage: 10,
                from: 1,
                to: 0,
                current_page: 1
            },
            offset: 8,
            keyword: '',
            surveyListAvailable: true,
            
        }
    },
    mounted() {
        setTimeout(function (evt) {
            this.jqueryFunction();
        }.bind(this), 10);
		this.getOffers();
		
    },
	
    methods: {
        jqueryFunction: function () {
            initjQueryCharts();
        },
		getOffers() {
            axios.post(`table/data/all/offers`)
                .then(resp => {
                    this.lists = resp.data;
                    this.orderListAvailable = this.lists.data.length > 0;
                }).catch(error => console.error(error));
        },
    },
}
</script>

<style scoped>

</style>
