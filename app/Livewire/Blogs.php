<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Blog;
use Livewire\WithPagination;



class Blogs extends Component
{
    use WithPagination;

    public $s;
    public $sortBy = 'id';
    public $sortAsc = true;

    public $deleteConfirmation = false;
    public $confirmAddBlog = false;
    public $blog = ['title' => '', 'content' => ''];
    public $selectedBlogId;

    protected $rules = [
        'blog.title' => 'required',
        'blog.content' => 'required'
    ];

    public function render(){
        $blogs = Blog::where('user_id', auth()->user()->id)
            ->when($this->s, function ($query) {
                return $query->where(function ($query) {
                    $query->where('title', 'like', '%' . $this->s . '%')
                        ->orWhere('content', 'like', '%' . $this->s . '%');
                });
            })
            ->orderBy('id', 'DESC')
            ->paginate(10);
    
        return view('livewire.blogs', [
            'blogs' => $blogs,
        ]);
    }

    public function confirmAddBlog(){
        $this->confirmAddBlog = true;
    }

    public function saveBlog(){
        // $this->validate(); 
        auth()->user()->blog()->create([
            'title' => $this->blog['title'],
            'content' => $this->blog['content'],
        ]);

        $this->reset(['blog']);
        return redirect()->route('dashboard');
    }

    public function fetchBlogDetails($id){

        // dd($id);
        $blog = Blog::find($id);
        // dd($blog);
        if($blog){
            $this->blog = [
                'id' => $blog->id,
                'title' => $blog->title,
                'content' => $blog->content
            ];
            
            $this->dispatch('open-modal', 'edit-blog');
        }
    }

    public function editBlog($blog){
    
        $this->fetchBlogDetails($blog);
    }

    public function saveUpdatedBlog(){
        $blog = Blog::findOrFail($this->blog['id']);
        $blog->update([
            'title' => $this->blog['title'],
            'content' => $this->blog['content'],
        ]);

        $this->reset(['blog']);
        return redirect()->route('dashboard');
    }

    public function deleteBlog(Blog $blog){
        $blog->delete();
    }
}
