.class public Lcom/umeng/analytics/a/f;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Lcom/umeng/analytics/a/h;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:I

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Lcom/umeng/analytics/a/r;

.field private final I:Ljava/lang/String;

.field private final J:Ljava/lang/String;

.field private final K:Ljava/lang/String;

.field private final L:Ljava/lang/String;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private final O:Ljava/lang/String;

.field private final P:Ljava/lang/String;

.field private final Q:Ljava/lang/String;

.field private final R:Ljava/lang/String;

.field private final S:Ljava/lang/String;

.field private final T:Ljava/lang/String;

.field private final U:Ljava/lang/String;

.field private final V:Ljava/lang/String;

.field private final W:Ljava/lang/String;

.field private final X:Ljava/lang/String;

.field private final Y:Ljava/lang/String;

.field private final Z:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field private final aa:Ljava/lang/String;

.field private final ab:Ljava/lang/String;

.field private final ac:Ljava/lang/String;

.field private final ad:Ljava/lang/String;

.field private final ae:Ljava/lang/String;

.field private final af:Ljava/lang/String;

.field private final ag:Ljava/lang/String;

.field private final ah:Ljava/lang/String;

.field private final ai:Ljava/lang/String;

.field private final aj:Ljava/lang/String;

.field private final ak:Ljava/lang/String;

.field private final al:Ljava/lang/String;

.field private final am:Ljava/lang/String;

.field private final an:Ljava/lang/String;

.field private final ao:Ljava/lang/String;

.field private final ap:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:J

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "appkey"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->I:Ljava/lang/String;

    .line 62
    const-string v0, "channel"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->J:Ljava/lang/String;

    .line 63
    const-string v0, "device_id"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->K:Ljava/lang/String;

    .line 64
    const-string v0, "idmd5"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->L:Ljava/lang/String;

    .line 65
    const-string v0, "mc"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->M:Ljava/lang/String;

    .line 66
    const-string v0, "req_time"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->N:Ljava/lang/String;

    .line 68
    const-string v0, "device_model"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->O:Ljava/lang/String;

    .line 69
    const-string v0, "os"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->P:Ljava/lang/String;

    .line 70
    const-string v0, "os_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->Q:Ljava/lang/String;

    .line 71
    const-string v0, "resolution"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->R:Ljava/lang/String;

    .line 72
    const-string v0, "cpu"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->S:Ljava/lang/String;

    .line 73
    const-string v0, "gpu_vender"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->T:Ljava/lang/String;

    .line 74
    const-string v0, "gpu_renderer"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->U:Ljava/lang/String;

    .line 75
    const-string v0, "device_board"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->V:Ljava/lang/String;

    .line 76
    const-string v0, "device_brand"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->W:Ljava/lang/String;

    .line 77
    const-string v0, "device_manutime"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->X:Ljava/lang/String;

    .line 78
    const-string v0, "device_manufacturer"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->Y:Ljava/lang/String;

    .line 79
    const-string v0, "device_manuid"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->Z:Ljava/lang/String;

    .line 80
    const-string v0, "device_name"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->aa:Ljava/lang/String;

    .line 82
    const-string v0, "app_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ab:Ljava/lang/String;

    .line 83
    const-string v0, "version_code"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ac:Ljava/lang/String;

    .line 84
    const-string v0, "package_name"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ad:Ljava/lang/String;

    .line 86
    const-string v0, "sdk_type"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ae:Ljava/lang/String;

    .line 87
    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->af:Ljava/lang/String;

    .line 89
    const-string v0, "timezone"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ag:Ljava/lang/String;

    .line 90
    const-string v0, "country"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ah:Ljava/lang/String;

    .line 91
    const-string v0, "language"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ai:Ljava/lang/String;

    .line 93
    const-string v0, "access"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->aj:Ljava/lang/String;

    .line 94
    const-string v0, "access_subtype"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ak:Ljava/lang/String;

    .line 95
    const-string v0, "carrier"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->al:Ljava/lang/String;

    .line 100
    const-string v0, "uinfo"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->am:Ljava/lang/String;

    .line 104
    const-string v0, "wrapper_type"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->an:Ljava/lang/String;

    .line 105
    const-string v0, "wrapper_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ao:Ljava/lang/String;

    .line 109
    const-string v0, "vertical_type"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ap:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "appkey"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->I:Ljava/lang/String;

    .line 62
    const-string v0, "channel"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->J:Ljava/lang/String;

    .line 63
    const-string v0, "device_id"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->K:Ljava/lang/String;

    .line 64
    const-string v0, "idmd5"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->L:Ljava/lang/String;

    .line 65
    const-string v0, "mc"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->M:Ljava/lang/String;

    .line 66
    const-string v0, "req_time"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->N:Ljava/lang/String;

    .line 68
    const-string v0, "device_model"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->O:Ljava/lang/String;

    .line 69
    const-string v0, "os"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->P:Ljava/lang/String;

    .line 70
    const-string v0, "os_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->Q:Ljava/lang/String;

    .line 71
    const-string v0, "resolution"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->R:Ljava/lang/String;

    .line 72
    const-string v0, "cpu"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->S:Ljava/lang/String;

    .line 73
    const-string v0, "gpu_vender"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->T:Ljava/lang/String;

    .line 74
    const-string v0, "gpu_renderer"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->U:Ljava/lang/String;

    .line 75
    const-string v0, "device_board"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->V:Ljava/lang/String;

    .line 76
    const-string v0, "device_brand"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->W:Ljava/lang/String;

    .line 77
    const-string v0, "device_manutime"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->X:Ljava/lang/String;

    .line 78
    const-string v0, "device_manufacturer"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->Y:Ljava/lang/String;

    .line 79
    const-string v0, "device_manuid"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->Z:Ljava/lang/String;

    .line 80
    const-string v0, "device_name"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->aa:Ljava/lang/String;

    .line 82
    const-string v0, "app_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ab:Ljava/lang/String;

    .line 83
    const-string v0, "version_code"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ac:Ljava/lang/String;

    .line 84
    const-string v0, "package_name"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ad:Ljava/lang/String;

    .line 86
    const-string v0, "sdk_type"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ae:Ljava/lang/String;

    .line 87
    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->af:Ljava/lang/String;

    .line 89
    const-string v0, "timezone"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ag:Ljava/lang/String;

    .line 90
    const-string v0, "country"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ah:Ljava/lang/String;

    .line 91
    const-string v0, "language"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ai:Ljava/lang/String;

    .line 93
    const-string v0, "access"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->aj:Ljava/lang/String;

    .line 94
    const-string v0, "access_subtype"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ak:Ljava/lang/String;

    .line 95
    const-string v0, "carrier"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->al:Ljava/lang/String;

    .line 100
    const-string v0, "uinfo"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->am:Ljava/lang/String;

    .line 104
    const-string v0, "wrapper_type"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->an:Ljava/lang/String;

    .line 105
    const-string v0, "wrapper_version"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ao:Ljava/lang/String;

    .line 109
    const-string v0, "vertical_type"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->ap:Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    .line 118
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    const-string v0, "appkey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    .line 123
    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->c:Ljava/lang/String;

    .line 124
    const-string v0, "idmd5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->d:Ljava/lang/String;

    .line 126
    const-string v0, "mc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "mc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->e:Ljava/lang/String;

    .line 130
    :cond_0
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    .line 134
    :cond_1
    const-string v0, "req_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    const-string v0, "req_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/f;->f:J

    .line 138
    :cond_2
    const-string v0, "uinfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->H:Lcom/umeng/analytics/a/r;

    if-nez v0, :cond_4

    new-instance v0, Lcom/umeng/analytics/a/r;

    invoke-direct {v0}, Lcom/umeng/analytics/a/r;-><init>()V

    .line 140
    :goto_0
    const-string v1, "uinfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/a/r;->a(Lorg/json/JSONObject;)V

    .line 141
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->H:Lcom/umeng/analytics/a/r;

    .line 144
    :cond_3
    return-void

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->H:Lcom/umeng/analytics/a/r;

    goto :goto_0
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 147
    const-string v0, "device_model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "device_model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->g:Ljava/lang/String;

    .line 148
    const-string v0, "os"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "os"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->h:Ljava/lang/String;

    .line 149
    const-string v0, "os_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "os_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->i:Ljava/lang/String;

    .line 150
    const-string v0, "resolution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "resolution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->j:Ljava/lang/String;

    .line 151
    const-string v0, "cpu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "cpu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->k:Ljava/lang/String;

    .line 152
    const-string v0, "gpu_vender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "gpu_vender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->l:Ljava/lang/String;

    .line 153
    const-string v0, "gpu_renderer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "gpu_renderer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->m:Ljava/lang/String;

    .line 155
    const-string v0, "device_board"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "device_board"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->n:Ljava/lang/String;

    .line 156
    const-string v0, "device_brand"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "device_brand"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->o:Ljava/lang/String;

    .line 157
    const-string v0, "device_manutime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "device_manutime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_9
    iput-wide v2, p0, Lcom/umeng/analytics/a/f;->p:J

    .line 158
    const-string v0, "device_manufacturer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "device_manufacturer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->q:Ljava/lang/String;

    .line 159
    const-string v0, "device_manuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "device_manuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->r:Ljava/lang/String;

    .line 160
    const-string v0, "device_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "device_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/analytics/a/f;->s:Ljava/lang/String;

    .line 162
    return-void

    :cond_1
    move-object v0, v1

    .line 147
    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 148
    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    .line 149
    goto/16 :goto_2

    :cond_4
    move-object v0, v1

    .line 150
    goto/16 :goto_3

    :cond_5
    move-object v0, v1

    .line 151
    goto/16 :goto_4

    :cond_6
    move-object v0, v1

    .line 152
    goto/16 :goto_5

    :cond_7
    move-object v0, v1

    .line 153
    goto :goto_6

    :cond_8
    move-object v0, v1

    .line 155
    goto :goto_7

    :cond_9
    move-object v0, v1

    .line 156
    goto :goto_8

    .line 157
    :cond_a
    const-wide/16 v2, 0x0

    goto :goto_9

    :cond_b
    move-object v0, v1

    .line 158
    goto :goto_a

    :cond_c
    move-object v0, v1

    .line 159
    goto :goto_b
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 165
    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->t:Ljava/lang/String;

    .line 166
    const-string v0, "version_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "version_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->u:Ljava/lang/String;

    .line 167
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/analytics/a/f;->v:Ljava/lang/String;

    .line 168
    return-void

    :cond_1
    move-object v0, v1

    .line 165
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 166
    goto :goto_1
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 171
    const-string v0, "sdk_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->w:Ljava/lang/String;

    .line 172
    const-string v0, "sdk_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->x:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 176
    const-string v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/umeng/analytics/a/f;->y:I

    .line 177
    const-string v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->z:Ljava/lang/String;

    .line 178
    const-string v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/analytics/a/f;->A:Ljava/lang/String;

    .line 179
    return-void

    .line 176
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 177
    goto :goto_1
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 182
    const-string v0, "access"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "access"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->B:Ljava/lang/String;

    .line 183
    const-string v0, "access_subtype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "access_subtype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->C:Ljava/lang/String;

    .line 184
    const-string v0, "carrier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "carrier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/analytics/a/f;->D:Ljava/lang/String;

    .line 185
    return-void

    :cond_1
    move-object v0, v1

    .line 182
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 183
    goto :goto_1
.end method

.method private i(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 188
    const-string v0, "wrapper_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "wrapper_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->F:Ljava/lang/String;

    .line 189
    const-string v0, "wrapper_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "wrapper_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/a/f;->G:Ljava/lang/String;

    .line 191
    const-string v0, "vertical_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vertical_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/a/f;->E:I

    .line 192
    return-void

    :cond_1
    move-object v0, v1

    .line 188
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 189
    goto :goto_1
.end method

.method private j(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    const-string v0, "appkey"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v0, "device_id"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v0, "idmd5"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "channel"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "mc"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_1
    iget-wide v0, p0, Lcom/umeng/analytics/a/f;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string v0, "req_time"

    iget-wide v1, p0, Lcom/umeng/analytics/a/f;->f:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->H:Lcom/umeng/analytics/a/r;

    if-eqz v0, :cond_3

    .line 218
    const-string v0, "uinfo"

    new-instance v1, Lcom/umeng/analytics/a/g;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/g;-><init>(Lcom/umeng/analytics/a/f;)V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    :cond_3
    return-void
.end method

.method private k(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "device_model"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "os"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "os_version"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "resolution"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "cpu"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->l:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "gpu_vender"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "gpu_vender"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    :cond_6
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->n:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "device_board"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    :cond_7
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->o:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "device_brand"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :cond_8
    iget-wide v0, p0, Lcom/umeng/analytics/a/f;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    const-string v0, "device_manutime"

    iget-wide v1, p0, Lcom/umeng/analytics/a/f;->p:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 239
    :cond_9
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->q:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "device_manufacturer"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->r:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "device_manuid"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    :cond_b
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->s:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, "device_name"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    :cond_c
    return-void
.end method

.method private l(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "app_version"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "version_code"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->v:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "package_name"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :cond_2
    return-void
.end method

.method private m(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    const-string v0, "sdk_type"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v0, "sdk_version"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    return-void
.end method

.method private n(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    const-string v0, "timezone"

    iget v1, p0, Lcom/umeng/analytics/a/f;->y:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->z:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "country"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->A:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "language"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    :cond_1
    return-void
.end method

.method private o(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "access"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->C:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "access_subtype"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->C:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->D:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "carrier"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->D:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    :cond_2
    return-void
.end method

.method private p(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "wrapper_type"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->G:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "wrapper_version"

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->G:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    :cond_1
    iget v0, p0, Lcom/umeng/analytics/a/f;->E:I

    if-eqz v0, :cond_2

    const-string v0, "vertical_type"

    iget v1, p0, Lcom/umeng/analytics/a/f;->E:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 274
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 326
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->g:Ljava/lang/String;

    .line 327
    const-string v0, "Android"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->h:Ljava/lang/String;

    .line 328
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->i:Ljava/lang/String;

    .line 329
    invoke-static {p1}, Lcom/umeng/common/b;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->j:Ljava/lang/String;

    .line 330
    invoke-static {}, Lcom/umeng/common/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->k:Ljava/lang/String;

    .line 333
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->n:Ljava/lang/String;

    .line 334
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->o:Ljava/lang/String;

    .line 335
    sget-wide v0, Landroid/os/Build;->TIME:J

    iput-wide v0, p0, Lcom/umeng/analytics/a/f;->p:J

    .line 336
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->q:Ljava/lang/String;

    .line 337
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->r:Ljava/lang/String;

    .line 338
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->s:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public varargs a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 306
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 307
    const/4 v0, 0x0

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    .line 308
    const/4 v0, 0x1

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/umeng/common/b;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->b:Ljava/lang/String;

    .line 314
    :cond_2
    invoke-static {p1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->c:Ljava/lang/String;

    .line 315
    invoke-static {p1}, Lcom/umeng/common/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->d:Ljava/lang/String;

    .line 316
    invoke-static {p1}, Lcom/umeng/common/b;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->e:Ljava/lang/String;

    .line 318
    invoke-static {p1}, Lcom/umeng/analytics/j;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_3

    .line 321
    const-string v1, "req_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/f;->f:J

    .line 323
    :cond_3
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/r;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/umeng/analytics/a/f;->H:Lcom/umeng/analytics/a/r;

    .line 372
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->c(Lorg/json/JSONObject;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->d(Lorg/json/JSONObject;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->e(Lorg/json/JSONObject;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->f(Lorg/json/JSONObject;)V

    .line 202
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->g(Lorg/json/JSONObject;)V

    .line 203
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->h(Lorg/json/JSONObject;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->i(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 293
    const-string v1, "MobclickAgent"

    const-string v2, "missing appkey "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return v0

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/a/f;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/analytics/a/f;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 298
    :cond_1
    const-string v1, "MobclickAgent"

    const-string v2, "missing device id"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 342
    invoke-static {p1}, Lcom/umeng/common/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->t:Ljava/lang/String;

    .line 343
    invoke-static {p1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->u:Ljava/lang/String;

    .line 344
    invoke-static {p1}, Lcom/umeng/common/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->v:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public varargs b(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/a/f;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/f;->a(Landroid/content/Context;)V

    .line 378
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/f;->b(Landroid/content/Context;)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/f;->c(Landroid/content/Context;)V

    .line 380
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/f;->d(Landroid/content/Context;)V

    .line 381
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/a/f;->e(Landroid/content/Context;)V

    .line 382
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->j(Lorg/json/JSONObject;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->k(Lorg/json/JSONObject;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->l(Lorg/json/JSONObject;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->m(Lorg/json/JSONObject;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->n(Lorg/json/JSONObject;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->o(Lorg/json/JSONObject;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/f;->p(Lorg/json/JSONObject;)V

    .line 287
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/umeng/analytics/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/a/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 348
    const-string v0, "Android"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->w:Ljava/lang/String;

    .line 349
    const-string v0, "4.6.3.0"

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->x:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 353
    invoke-static {p1}, Lcom/umeng/common/b;->o(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/a/f;->y:I

    .line 355
    invoke-static {p1}, Lcom/umeng/common/b;->p(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 357
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/umeng/analytics/a/f;->z:Ljava/lang/String;

    .line 358
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->A:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 362
    invoke-static {p1}, Lcom/umeng/common/b;->k(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 364
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/umeng/analytics/a/f;->B:Ljava/lang/String;

    .line 365
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->C:Ljava/lang/String;

    .line 367
    invoke-static {p1}, Lcom/umeng/common/b;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/f;->D:Ljava/lang/String;

    .line 368
    return-void
.end method
