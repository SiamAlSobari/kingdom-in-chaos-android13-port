.class public Lcom/vungle/publisher/db/model/LocalVideo$Factory;
.super Lcom/vungle/publisher/db/model/Video$Factory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/db/model/LocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/db/model/Video$Factory",
        "<",
        "Lcom/vungle/publisher/db/model/LocalAd;",
        "Lcom/vungle/publisher/db/model/LocalVideo;",
        "Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final d:Lcom/vungle/publisher/at$b;


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/db/model/LocalVideo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/db/model/LocalViewableDelegate$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/vungle/publisher/at$b;->a:Lcom/vungle/publisher/at$b;

    sput-object v0, Lcom/vungle/publisher/db/model/LocalVideo$Factory;->d:Lcom/vungle/publisher/at$b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/Video$Factory;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/db/model/LocalAd;Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;)Lcom/vungle/publisher/db/model/LocalVideo;
    .locals 3

    .prologue
    .line 207
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/db/model/Video$Factory;->a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/protocol/message/RequestAdResponse;)Lcom/vungle/publisher/db/model/Video;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalVideo;

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p2, Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;->w:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/db/model/LocalVideo;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;->v:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/LocalVideo;->a(Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    iput-object v1, v2, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->c:Ljava/lang/String;

    sget-object v1, Lcom/vungle/publisher/db/model/LocalVideo$Factory;->d:Lcom/vungle/publisher/at$b;

    iput-object v1, v0, Lcom/vungle/publisher/db/model/LocalVideo;->q:Lcom/vungle/publisher/at$b;

    .line 211
    :cond_0
    return-object v0
.end method

.method private a(Lcom/vungle/publisher/db/model/LocalVideo;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/LocalVideo;
    .locals 1

    .prologue
    .line 229
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/db/model/Video$Factory;->a(Lcom/vungle/publisher/db/model/Video;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Video;

    .line 230
    iget-object v0, p1, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/db/model/LocalViewableDelegate;->a(Landroid/database/Cursor;)V

    .line 231
    const-string v0, "checksum"

    invoke-static {p2, v0}, Lcom/vungle/publisher/aq;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalVideo;->a:Ljava/lang/String;

    .line 232
    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/vungle/publisher/as;Landroid/database/Cursor;)Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 188
    check-cast p1, Lcom/vungle/publisher/db/model/LocalVideo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/db/model/LocalVideo$Factory;->a(Lcom/vungle/publisher/db/model/LocalVideo;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/LocalVideo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/protocol/message/RequestAdResponse;)Lcom/vungle/publisher/db/model/Video;
    .locals 1

    .prologue
    .line 188
    check-cast p1, Lcom/vungle/publisher/db/model/LocalAd;

    check-cast p2, Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/db/model/LocalVideo$Factory;->a(Lcom/vungle/publisher/db/model/LocalAd;Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;)Lcom/vungle/publisher/db/model/LocalVideo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/db/model/Video;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Video;
    .locals 1

    .prologue
    .line 188
    check-cast p1, Lcom/vungle/publisher/db/model/LocalVideo;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/db/model/LocalVideo$Factory;->a(Lcom/vungle/publisher/db/model/LocalVideo;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/LocalVideo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/db/model/Viewable;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Viewable;
    .locals 1

    .prologue
    .line 188
    check-cast p1, Lcom/vungle/publisher/db/model/LocalVideo;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/db/model/LocalVideo$Factory;->a(Lcom/vungle/publisher/db/model/LocalVideo;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/LocalVideo;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Lcom/vungle/publisher/at$b;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/vungle/publisher/db/model/LocalVideo$Factory;->d:Lcom/vungle/publisher/at$b;

    return-object v0
.end method

.method protected final synthetic b(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/protocol/message/RequestAdResponse;)Lcom/vungle/publisher/db/model/Viewable;
    .locals 1

    .prologue
    .line 188
    check-cast p1, Lcom/vungle/publisher/db/model/LocalAd;

    check-cast p2, Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/db/model/LocalVideo$Factory;->a(Lcom/vungle/publisher/db/model/LocalAd;Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;)Lcom/vungle/publisher/db/model/LocalVideo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final bridge synthetic c(I)[Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 188
    new-array v0, p1, [Lcom/vungle/publisher/db/model/LocalVideo;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/as;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalVideo$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalVideo;

    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalVideo$Factory;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate$Factory;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/db/model/LocalViewableDelegate$Factory;->a(Lcom/vungle/publisher/db/model/LocalViewableDelegate$a;)Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/db/model/LocalVideo;->b:Lcom/vungle/publisher/db/model/LocalViewableDelegate;

    return-object v0
.end method
