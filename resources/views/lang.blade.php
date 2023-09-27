<!-- Using blade directive -->
<h1>@lang('messages.welcome')</h1>

<p>@lang('messages.greeting', ['name'=>'John'])</p>


<!-- Using helper function -->
<h1>{{ __('messages.welcome') }}</h1>

<p>{{ __('messages.greeting', ['name'=>'John']) }}</p>
