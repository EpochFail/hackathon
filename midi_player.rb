require 'ffi-fluidsynth'

class MidiPlayer
  def self.play(file)
    @@settings =  FluidSynth::new_fluid_settings
    @@synth =  FluidSynth::new_fluid_synth(@@settings)
    @@driver = FluidSynth::new_fluid_audio_driver(@@settings, @@synth)
    @@player = FluidSynth::new_fluid_player(@@synth)
    FluidSynth::synth_sfload(@@synth, "media/Hollywood.sf2", 1)
    FluidSynth::player_add(@@player, file)
    FluidSynth::player_play(@@player)
  end
  
  def self.stop
    FluidSynth::player_stop(@@player)
    FluidSynth::delete_fluid_player(@@player)
    FluidSynth::delete_fluid_driver(@@driver)
    FluidSynth::delete_fluid_synth(@@synth)
    FluidSynth::delete_fluid_settings(@@settings)
  end
  
end
