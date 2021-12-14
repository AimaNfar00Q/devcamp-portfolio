class BlogsController < ApplicationController
  before_action :set_blog, only: %i[ show edit update destroy ]

layout "blog" #blog layout included

  # GET /blogs or /blogs.json
  def index
    @blogs = Blog.all #showing us all the blog posts that have been created by user
    @page_title= "My Portfol Blog"
  end

  # GET /blogs/1 or /blogs/1.json
  def show #here control will go to line 2 and set_blog method for show will be call which is getting the params id of post for which user'll pres show btn
   @page_title = @blog.title
   @seo_keywords = @blog.body 
  end

  # GET /blogs/new
  def new
    @blog = Blog.new  #will create a blank form page to create a new blogpost nd blogpost will be created by create or create new instance of blog
  end

  # GET /blogs/1/edit
  def edit #will get the id if that specific post that have to be edit
  end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params) #getting the parameter of form title nd body

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: "Blog was successfully created." } #will redirect to blog show page
        
      else
        format.html { render :new, status: :unprocessable_entity }
        
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: "Blog was successfully updated." }
      
      else
        format.html { render :edit, status: :unprocessable_entity }
        
      end
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: "Blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end
