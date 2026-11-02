.class public Lcom/vungle/publisher/db/model/StreamingVideo$Factory;
.super Lcom/vungle/publisher/db/model/Video$Factory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/db/model/StreamingVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/db/model/Video$Factory",
        "<",
        "Lcom/vungle/publisher/db/model/StreamingAd;",
        "Lcom/vungle/publisher/db/model/StreamingVideo;",
        "Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final b:Lcom/vungle/publisher/at$b;


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/db/model/StreamingVideo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/vungle/publisher/at$b;->d:Lcom/vungle/publisher/at$b;

    sput-object v0, Lcom/vungle/publisher/db/model/StreamingVideo$Factory;->b:Lcom/vungle/publisher/at$b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/Video$Factory;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/db/model/StreamingAd;Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;)Lcom/vungle/publisher/db/model/StreamingVideo;
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/db/model/Video$Factory;->a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/protocol/message/RequestAdResponse;)Lcom/vungle/publisher/db/model/Video;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/StreamingVideo;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/db/model/StreamingVideo;->c:Ljava/lang/String;

    .line 84
    sget-object v1, Lcom/vungle/publisher/db/model/StreamingVideo$Factory;->b:Lcom/vungle/publisher/at$b;

    iput-object v1, v0, Lcom/vungle/publisher/db/model/StreamingVideo;->q:Lcom/vungle/publisher/at$b;

    .line 86
    :cond_0
    return-object v0
.end method

.method private a(Lcom/vungle/publisher/db/model/StreamingVideo;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/StreamingVideo;
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/db/model/Video$Factory;->a(Lcom/vungle/publisher/db/model/Video;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Video;

    .line 92
    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/aq;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/db/model/StreamingVideo;->c:Ljava/lang/String;

    .line 93
    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/vungle/publisher/as;Landroid/database/Cursor;)Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/db/model/StreamingVideo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/db/model/StreamingVideo$Factory;->a(Lcom/vungle/publisher/db/model/StreamingVideo;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/StreamingVideo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/protocol/message/RequestAdResponse;)Lcom/vungle/publisher/db/model/Video;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/db/model/StreamingAd;

    check-cast p2, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/db/model/StreamingVideo$Factory;->a(Lcom/vungle/publisher/db/model/StreamingAd;Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;)Lcom/vungle/publisher/db/model/StreamingVideo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/db/model/Video;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Video;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/db/model/StreamingVideo;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/db/model/StreamingVideo$Factory;->a(Lcom/vungle/publisher/db/model/StreamingVideo;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/StreamingVideo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/db/model/Viewable;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Viewable;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/db/model/StreamingVideo;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/db/model/StreamingVideo$Factory;->a(Lcom/vungle/publisher/db/model/StreamingVideo;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/StreamingVideo;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Lcom/vungle/publisher/at$b;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/vungle/publisher/db/model/StreamingVideo$Factory;->b:Lcom/vungle/publisher/at$b;

    return-object v0
.end method

.method protected final synthetic b(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/protocol/message/RequestAdResponse;)Lcom/vungle/publisher/db/model/Viewable;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/db/model/StreamingAd;

    check-cast p2, Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/db/model/StreamingVideo$Factory;->a(Lcom/vungle/publisher/db/model/StreamingAd;Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;)Lcom/vungle/publisher/db/model/StreamingVideo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final bridge synthetic c(I)[Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 65
    new-array v0, p1, [Lcom/vungle/publisher/db/model/StreamingVideo;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/db/model/StreamingVideo$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/StreamingVideo;

    return-object v0
.end method
