.class Lcom/tapjoy/TapjoyCache$1;
.super Ljava/lang/Thread;
.source "TapjoyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyCache;->cacheAssetGroup(Lorg/json/JSONArray;Lcom/tapjoy/TapjoyCacheNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyCache;

.field final synthetic val$assetGroup:Lorg/json/JSONArray;

.field final synthetic val$tapjoyCacheNotifier:Lcom/tapjoy/TapjoyCacheNotifier;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyCache;Lorg/json/JSONArray;Lcom/tapjoy/TapjoyCacheNotifier;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/tapjoy/TapjoyCache$1;->this$0:Lcom/tapjoy/TapjoyCache;

    iput-object p2, p0, Lcom/tapjoy/TapjoyCache$1;->val$assetGroup:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/tapjoy/TapjoyCache$1;->val$tapjoyCacheNotifier:Lcom/tapjoy/TapjoyCacheNotifier;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "assetGroupFutureList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    const/4 v6, 0x1

    .line 181
    .local v6, "status":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, p0, Lcom/tapjoy/TapjoyCache$1;->val$assetGroup:Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 185
    :try_start_0
    iget-object v8, p0, Lcom/tapjoy/TapjoyCache$1;->val$assetGroup:Lorg/json/JSONArray;

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 186
    .local v1, "assetToCache":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/tapjoy/TapjoyCache$1;->this$0:Lcom/tapjoy/TapjoyCache;

    invoke-virtual {v8, v1}, Lcom/tapjoy/TapjoyCache;->cacheAssetFromJSONObject(Lorg/json/JSONObject;)Ljava/util/concurrent/Future;

    move-result-object v7

    .line 187
    .local v7, "submit":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    if-eqz v7, :cond_0

    .line 188
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 181
    .end local v1    # "assetToCache":Lorg/json/JSONObject;
    .end local v7    # "submit":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 198
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :try_start_1
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_3

    .line 199
    const/4 v6, 0x2

    .line 201
    :cond_3
    iget-object v8, p0, Lcom/tapjoy/TapjoyCache$1;->this$0:Lcom/tapjoy/TapjoyCache;

    invoke-static {v8}, Lcom/tapjoy/TapjoyCache;->access$000(Lcom/tapjoy/TapjoyCache;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 202
    const-string v8, "TapjoyCache"

    const-string v9, "Caching thread completed"

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 204
    :catch_0
    move-exception v2

    .line 206
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v6, 0x2

    .line 210
    goto :goto_2

    .line 207
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 209
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const/4 v6, 0x2

    goto :goto_2

    .line 215
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :cond_4
    iget-object v8, p0, Lcom/tapjoy/TapjoyCache$1;->val$tapjoyCacheNotifier:Lcom/tapjoy/TapjoyCacheNotifier;

    if-eqz v8, :cond_5

    .line 216
    iget-object v8, p0, Lcom/tapjoy/TapjoyCache$1;->val$tapjoyCacheNotifier:Lcom/tapjoy/TapjoyCacheNotifier;

    invoke-interface {v8, v6}, Lcom/tapjoy/TapjoyCacheNotifier;->cachingComplete(I)V

    .line 218
    :cond_5
    return-void

    .line 190
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v8

    goto :goto_1
.end method
