#--
#	Rubygame -- Ruby code and bindings to SDL to facilitate game creation
#	Copyright (C) 2004-2009  John Croisant
#
#	This library is free software; you can redistribute it and/or
#	modify it under the terms of the GNU Lesser General Public
#	License as published by the Free Software Foundation; either
#	version 2.1 of the License, or (at your option) any later version.
#
#	This library is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#	Lesser General Public License for more details.
#
#	You should have received a copy of the GNU Lesser General Public
#	License along with this library; if not, write to the Free Software
#	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#++



require "ruby-sdl-ffi/svg"

Rubygame::VERSIONS[:sdl_svg] = SDL::SVG.Version()

class Rubygame::Svg

  def self.load(file_name)
    self.new(SDL::SVG.Load(file_name))
  end

  def self.load_buffer(buffer)
    self.new(SDL::SVG.LoadBuffer(buffer,buffer.size()))
  end

  def initialize(context)
    @svg_context = context
  end

  def set_clipping(x,y,x2,y2)
    SDL::SVG.SetClipping(@svg_context,x,y,x2,y2)
  end

  def set_flags(flags)
    SDL::SVG.Set_Flags(@svg_context,Rubygame.collapse_flags(flags))
  end

  def height
    SDL::SVG.Height(@svg_context)
  end

  def width
    SDL::SVG.Width(@svg_context)
  end

  def set_scale(x,y)
    SDL::SVG.SetScale(@svg_context, x, y)
  end

  def set_offset(x,y)
    SDL::SVG.SetOffset(@svg_context, x, y)
  end

  def render_svg(x,y,target_surface) 
    SDL::SVG.RenderToSurface(@svg_context, x, y, target_surface.send(:struct))
  end

end
