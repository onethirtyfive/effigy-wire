# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Imports
#
require_relative 'networkbasetypes.pb'

module Effigy
  module Wire

    ##
    # Enum Classes
    #
    class VoiceDataFormat_t < ::Protobuf::Enum
      define :VOICEDATA_FORMAT_STEAM, 0
      define :VOICEDATA_FORMAT_ENGINE, 1
    end


    ##
    # Message Classes
    #
    class CSVCMsg_GameEventList < ::Protobuf::Message
      class Key_t < ::Protobuf::Message; end
      class Descriptor_t < ::Protobuf::Message; end

    end

    class CSVCMsg_PacketEntities < ::Protobuf::Message; end
    class CSVCMsg_ServerInfo < ::Protobuf::Message; end
    class CSVCMsg_ClassInfo < ::Protobuf::Message
      class Class_t < ::Protobuf::Message; end

    end

    class CSVCMsg_SetView < ::Protobuf::Message; end
    class CSVCMsg_Print < ::Protobuf::Message; end
    class CSVCMsg_VoiceInit < ::Protobuf::Message; end
    class CSVCMsg_Sounds < ::Protobuf::Message
      class Sounddata_t < ::Protobuf::Message; end

    end

    class CSVCMsg_UpdateStringTable < ::Protobuf::Message; end
    class CSVCMsg_FullFrameSplit < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CSVCMsg_GameEventList
      class Key_t
        optional :int32, :type, 1
        optional :string, :name, 2
      end

      class Descriptor_t
        optional :int32, :eventid, 1
        optional :string, :name, 2
        repeated ::Effigy::Wire::CSVCMsg_GameEventList::Key_t, :keys, 3
      end

      repeated ::Effigy::Wire::CSVCMsg_GameEventList::Descriptor_t, :descriptors, 1
    end

    class CSVCMsg_PacketEntities
      optional :int32, :max_entries, 1
      optional :int32, :updated_entries, 2
      optional :bool, :is_delta, 3
      optional :bool, :update_baseline, 4
      optional :int32, :baseline, 5
      optional :int32, :delta_from, 6
      optional :bytes, :entity_data, 7
      optional :bool, :pending_full_frame, 8
      optional :uint32, :active_spawngroup_handle, 9
      optional :uint32, :max_spawngroup_creationsequence, 10
    end

    class CSVCMsg_ServerInfo
      optional :int32, :protocol, 1
      optional :int32, :server_count, 2
      optional :bool, :is_dedicated, 3
      optional :bool, :is_hltv, 4
      optional :bool, :is_replay, 5
      optional :int32, :c_os, 6
      optional :fixed32, :map_crc, 7
      optional :fixed32, :client_crc, 8
      optional :fixed32, :string_table_crc, 9
      optional :int32, :max_clients, 10
      optional :int32, :max_classes, 11
      optional :int32, :player_slot, 12
      optional :float, :tick_interval, 13
      optional :string, :game_dir, 14
      optional :string, :map_name, 15
      optional :string, :sky_name, 16
      optional :string, :host_name, 17
      optional :string, :addon_name, 18
      optional ::Effigy::Wire::CSVCMsg_GameSessionConfiguration, :game_session_config, 19
      optional :bytes, :game_session_manifest, 20
    end

    class CSVCMsg_ClassInfo
      class Class_t
        optional :int32, :class_id, 1
        optional :string, :data_table_name, 2
        optional :string, :class_name, 3
      end

      optional :bool, :create_on_client, 1
      repeated ::Effigy::Wire::CSVCMsg_ClassInfo::Class_t, :classes, 2
    end

    class CSVCMsg_SetView
      optional :int32, :entity_index, 1
      optional :int32, :slot, 2
    end

    class CSVCMsg_Print
      optional :string, :text, 1
    end

    class CSVCMsg_VoiceInit
      optional :int32, :quality, 1
      optional :string, :codec, 2
      optional :int32, :version, 3, :default => 0
    end

    class CSVCMsg_Sounds
      class Sounddata_t
        optional :sint32, :origin_x, 1
        optional :sint32, :origin_y, 2
        optional :sint32, :origin_z, 3
        optional :uint32, :volume, 4
        optional :float, :delay_value, 5
        optional :int32, :sequence_number, 6
        optional :int32, :entity_index, 7
        optional :int32, :channel, 8
        optional :int32, :pitch, 9
        optional :int32, :flags, 10
        optional :uint32, :sound_num, 11
        optional :fixed32, :sound_num_handle, 12
        optional :int32, :speaker_entity, 13
        optional :int32, :random_seed, 14
        optional :int32, :sound_level, 15
        optional :bool, :is_sentence, 16
        optional :bool, :is_ambient, 17
        optional :uint32, :guid, 18
        optional :fixed64, :sound_resource_id, 19
      end

      optional :bool, :reliable_sound, 1
      repeated ::Effigy::Wire::CSVCMsg_Sounds::Sounddata_t, :sounds, 2
    end

    class CSVCMsg_UpdateStringTable
      optional :int32, :table_id, 1
      optional :int32, :num_changed_entries, 2
      optional :bytes, :string_data, 3
    end

    class CSVCMsg_FullFrameSplit
      optional :int32, :tick, 1
      optional :int32, :section, 2
      optional :int32, :total, 3
      optional :bytes, :data, 4
    end

  end

end

