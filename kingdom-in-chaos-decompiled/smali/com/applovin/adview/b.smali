.class Lcom/applovin/adview/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v2, v3}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/adview/AppLovinInterstitialActivity;I)I

    iget-object v2, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/AppLovinVideoView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->setVideoSize(II)V

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/AppLovinVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    new-instance v0, Lcom/applovin/adview/c;

    invoke-direct {v0, p0}, Lcom/applovin/adview/c;-><init>(Lcom/applovin/adview/b;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->e(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->f(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    iget-object v0, p0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->g(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    return-void
.end method
