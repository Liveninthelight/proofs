
{Base} = require './base'
{constants} = require './constants'

#==========================================================================

exports.UpdatePassphraseHash = class UpdatePassphraseHash extends Base

  constructor : (obj) ->
    @update_passphrase_hash = obj.update_passphrase_hash
    super obj

  _type : () -> constants.sig_types.update_passphrase_hash

  _json : () ->
    ret = super { expire_in : 24*60*60 }
    ret.update_passphrase_hash = @update_passphrase_hash
    ret

#==========================================================================
