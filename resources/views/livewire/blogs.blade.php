<div class="p-6 sm:px-20 bg-white border-b border-gray-200">    
    <div class="mt-8 text-2xl flex justify-between">
        <div>Blog List</div>
        <div>
            {{-- <button
                data-modal-target="authentication-modal"
                data-modal-toggle="authentication-modal"
                class="px-3 py-2 text-sm font-medium text-center text-white bg-green-700 rounded-lg hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-green-300 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800"
                wire:click="addBlog"
            >
                Add Blog 
            </button> --}}
            <x-success-button x-on:click.prevent="$dispatch('open-modal', 'add-blog')"> 
                {{ __('Add Blog') }}
            </x-success-button>
        </div>
    </div>
    {{-- {{ $query }} --}}
    <div class="mt-6">
        <div class="flex justify-between">
        </div>
        <table class="table-auto w-full">
            <thead>
                <tr>
                    {{-- <th class="px-5 py-2 bg-gray-200">
                        <div class="flex items-center"></div>
                    </th> --}}
                    <th class="px-5 py-2 bg-gray-200">
                        <div class="flex items-center">Title</div>
                    </th>
                    <th class="px-5 py-2 bg-gray-200">
                        <div class="flex items-center">Content</div>
                    </th> 
                    <th class="px-5 py-2 bg-gray-200">
                        <div class="flex items-center">Action</div>
                    </th>
                </tr>
            </thead>
            <tbody>
                @foreach ($blogs as $blog)
                    <tr>
                        {{-- <td class="border px-4 py-2">{{ $blog->id }}</td> --}}
                        <td class="border px-4 py-2">{{ $blog->title }}</td>
                        <td class="border px-4 py-2">{{ $blog->content  }}</td>
                        <td class="border px-4 py-2">
                            <x-primary-button x-on:click.prevent="$wire.editBlog({{ $blog->id }})">
                                {{ __('Edit') }}
                            </x-primary-button>

                            <button
                                class="px-3 py-2 text-sm font-medium text-center text-white bg-red-700 rounded-lg hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800"
                                wire:click="deleteBlog({{ $blog->id }})"
                                wire:confirm="Are you sure you want to delete this post?"
                            >
                                Delete Blog 
                            </button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <div class="mt-4">
        {{ $blogs->links() }}
    </div>

    {{-- Add new Blog Modal --}}
    <x-modal name="add-blog" :show="$errors->isNotEmpty()">
        <div class="p-6">
            <div>
                <x-input-label for="title" :value="__('Add Title')" />
                <x-text-input wire:model.defer="blog.title" id="title" name="title" type="text" class="mt-1 block w-full" autocomplete="title" required />
                <x-input-error :messages="$errors->get('title')" class="mt-2" />
            </div>
    
            <div>
                <x-input-label for="content" :value="__('Add Content')" />
                <x-text-area wire:model.defer="blog.content" id="content" name="content" type="text" class="mt-1 block w-full" autocomplete="content" required></x-text-area>
                <x-input-error :messages="$errors->get('content')" class="mt-2" />
            </div>
    
            <div class="mt-6 flex justify-end">
                <x-secondary-button class="mr-1" x-on:click="$dispatch('close')">
                    {{ __('Cancel') }}
                </x-secondary-button>
                <button 
                    class="inline-flex items-center px-4 py-2 bg-green-600 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-green-500 active:bg-green-700 focus:outline-none focus:ring-2 focus:ring-green-500 focus:ring-offset-2 transition ease-in-out duration-150"
                    wire:click="saveBlog()"
                    >
                    Save
                </button>
            </div>
        </div>
    </x-modal>

    <!-- Edit Blog Modal -->
    <x-modal name="edit-blog" :show="$errors->isNotEmpty()">
        <div class="p-6">
            <div>
                <x-input-label for="title" :value="__('Edit Title')" />
                <x-text-input wire:model.defer="blog.title" id="edit-title" name="title" type="text" class="mt-1 block w-full" autocomplete="title" required />
                <x-input-error :messages="$errors->get('title')" class="mt-2" />
            </div>

            <div>
                <x-input-label for="content" :value="__('Edit Content')" />
                <x-text-area wire:model.defer="blog.content" id="edit-content" name="content" type="text" class="mt-1 block w-full" autocomplete="content" required></x-text-area>
                <x-input-error :messages="$errors->get('content')" class="mt-2" />
            </div>

            <div class="mt-6 flex justify-end">
                <x-secondary-button class="mr-1" x-on:click="$dispatch('close')">
                    {{ __('Cancel') }}
                </x-secondary-button>
                <button 
                    class="inline-flex items-center px-4 py-2 bg-gray-800 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 focus:bg-gray-700 active:bg-gray-900 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 transition ease-in-out duration-150"
                    wire:click="saveUpdatedBlog()"
                >
                    Edit
                </button>
            </div>
        </div>
    </x-modal>
</div>
