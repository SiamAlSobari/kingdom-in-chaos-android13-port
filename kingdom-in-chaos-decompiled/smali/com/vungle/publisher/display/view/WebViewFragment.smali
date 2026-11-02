.class abstract Lcom/vungle/publisher/display/view/WebViewFragment;
.super Lcom/vungle/publisher/display/view/AdFragment;
.source "vungle"


# instance fields
.field protected a:Lcom/vungle/publisher/bb$a;

.field protected b:Landroid/webkit/WebView;

.field c:Lcom/vungle/publisher/bf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vungle/publisher/display/view/AdFragment;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vungle/publisher/display/view/WebViewFragment;->d:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/bb$a;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vungle/publisher/display/view/WebViewFragment;->a:Lcom/vungle/publisher/bb$a;

    .line 41
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/WebViewFragment;->d:Ljava/lang/String;

    .line 37
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 45
    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vungle/publisher/display/view/WebViewFragment;->b:Landroid/webkit/WebView;

    .line 47
    iget-object v2, p0, Lcom/vungle/publisher/display/view/WebViewFragment;->c:Lcom/vungle/publisher/bf;

    invoke-interface {v2, v1}, Lcom/vungle/publisher/bf;->a(Landroid/webkit/WebView;)V

    .line 48
    new-instance v2, Lcom/vungle/publisher/bb;

    iget-object v3, p0, Lcom/vungle/publisher/display/view/WebViewFragment;->a:Lcom/vungle/publisher/bb$a;

    invoke-direct {v2, v3}, Lcom/vungle/publisher/bb;-><init>(Lcom/vungle/publisher/bb$a;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 49
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/vungle/publisher/display/view/WebViewFragment;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 50
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 52
    invoke-virtual {v1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 53
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/vungle/publisher/display/view/AdFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    const-string v0, "url"

    iget-object v1, p0, Lcom/vungle/publisher/display/view/WebViewFragment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
