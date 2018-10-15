<?php $source = Theme::asset()->url('images'); ?>
<div class="bg_career_1 d-flex align-items-center">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center text-uppercase">
                <h4>our positions</h4>
            </div>
        </div>
    </div>
</div>
<section class="bg_career_2">
    <div class="container">
        <?php if(isset($careers[0])){ ?>
        <div class="row row-2 no-gutters">
            <div class="col-md-12 item-1 item">
                <img src="{{ $careers[0]->image }}" width="100%" alt="{{ $careers[0]->name }}">
                <div class="it-1 row">
                    <div class="col-md-3 d-flex align-items-center justify-content-center">
                        <div class="card">
                            <div class="card-body">
                                <p class="title text-uppercase">{{ $careers[0]->name }}</p>
                                <a href="{{ route('public.page.applicationform') }}" class="btn btn-warning btn-effect">Apply now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>
        <div class="row">
            <?php
                for ($i=1; $i < 5; $i++) { 
                    if(isset($careers[$i])){
            ?>
            <div class="col-md-6 item-2 item">
                <img src="{{ $careers[$i]->image }}" width="100%" alt="{{ $careers[$i]->name }}">
                <div class="item-content d-flex align-items-center">
                    <span class="title text-uppercase">{{ $careers[$i]->name }}</span>
                    <a href="{{ route('public.page.applicationform') }}" class="text-uppercase btn btn-apply pull-right">Apply now</a>
                </div>
            </div>
            <?php
                    }
                }
            ?>
        </div>
    </div>
</div>
</section>
<?php if($careers->count() > 5){ ?>
<section class="bg_career_3">
    <div class="row section-3 no-gutters">
        <div class="col-md-6 col-left">
            <img class="img-fit" src="{{ $careers[5]->image }}" alt="{{ $careers[5]->name }}">
        </div>
        <div class="col-md-6 col-right d-flex align-items-center justify-content-center">
            <div class="box-option">
                <div class="box-left">
                    <p class="title">More Positions</p>
                    <ul>
                        <?php
                            for ($j=5; $j < $careers->count(); $j++) { 
                                if(isset($careers[$j])){
                        ?>
                            <li data="{{ $careers[$j]->image }}" <?php if($j==5) echo 'class="choose"'; ?>>{{ $careers[$j]->name }}</li>
                        <?php
                                }
                            }
                        ?>
                    </ul>
                </div>
                <div class="box-right d-flex align-items-center justify-content-center">
                    <a href="{{ route('public.page.applicationform') }}" class="text-uppercase btn btn-apply">Apply now</a>
                </div>
            </div>
        </div>
    </div>
</section>
<?php } ?>
<section class="bg_career_4">
    <div class="row section-4 no-gutters">
        <div class="col-md-6 col-left d-flex align-items-center justify-content-center">
            <div class="container">
                
            </div>
        </div>
        <div class="col-md-6 col-right">
            <img src="{{ $source }}/career/hinh.png" alt="Logistic">
        </div>
        <div class="col-md-12 box-item">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="box1 active box ">
                            <p class="title"><i class="icon"></i>Employment Requirements</p>
                            <ul class="des">
                                <li>18 years old or older at the time of appointment for interview;</li>
                                <li>United States citizen or national of other U.S. territory, lawful permanent resident, or non-citizen legally present in the United States;</li>
                                <li>Recent employment history;</li>
                                <li>Ability to pass the following pre-employment tests: background check, drug screening, and medical assessment;</li>
                                <li>Safe driving record (if applicable to the position).</li>
                            </ul>
                        </div>
                        <div class="box2 box">
                            <p class="title"><i class="icon"></i>Equal Opportunity Disclosure</p>
                            <p class="des">
                                United Material Handling, Inc. is an equal opportunity employer. United Material Handling, Inc. is committed to providing a work environment free of harassment, discrimination, retaliation, and disrespectful or other unprofessional conduct based on sex (including pregnancy, childbirth, breastfeeding or related medical conditions), sex stereotype, race, religion (including religious dress and grooming practices), color, gender (including gender identity, gender expression and transgender), national origin (including language use restrictions and possession of a driver’s license issued under Vehicle Code section 12801.9), ancestry, physical or mental disability, medical condition, genetic information, marital status, registered domestic partner status, age, sexual orientation, military and veteran status or any other basis protected by federal, state or local law or ordinance or regulation.It also prohibits discrimination, harassment, disrespectful or unprofessional conduct based on the perception that anyone has any of those characteristics, or is associated with a person who has or is perceived as having any of those characteristics.In addition, the Company prohibits retaliation against individuals who raise complaints of discrimination or harassment or who participate in workplace investigations.
                            </p>
                        </div>
                        <a href="{{ route('public.page.applicationform') }}" class="text-uppercase btn btn-apply">Apply now</a>
                    </div>
                    <div class="col-md-6"></div>
                </div>
            </div>
        </div>
    </div>
</section>
</section>