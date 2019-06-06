<div class="item-mapp-content-{{ $item->id }}">
	<div class="popup-content">
		<div class="wrapper">
			<div class="description">
				<div>
					<div class="h4"><i class="fas fa-user"></i>{{ $item->name }}</div>
					<p>{{ $item->description }}</p>
				</div>
			</div>
			<div class="thumbnail"><img src="{{ url($item->image) }}" alt=""></div>
		</div>
	</div>
</div>
	