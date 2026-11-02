.class public final Lcom/vungle/publisher/protocol/message/RequestConfigResponse;
.super Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/message/RequestConfigResponse$Factory;,
        Lcom/vungle/publisher/protocol/message/RequestConfigResponse$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Lcom/vungle/publisher/protocol/message/RequestConfigResponse$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-super {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
