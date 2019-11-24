$('#google-map').gMap({

            
            zoom: 6,
            doubleclickzoom: true,
            controls: {
                panControl: true,
                zoomControl: true,
                mapTypeControl: true,
                scaleControl: true,
                streetViewControl: false,
                overviewMapControl: false
            },
            markers: [
    
                {
                    latitude:-22.555366,
                    longitude:-55.718493,
                    html: "Casa Central"
                },

                {
                    latitude:-25.204563,
                    longitude:-57.525122,
                    html: "Mariano Roque Alonso"
                },

                {
                    latitude:-25.329102, 
                    longitude:-57.544691,
                    html: "Fernando de la Mora"
                },

                {
                    latitude:-27.307728, 
                    longitude:-55.839396,
                    html: "Encarnacion"
                },
                
                {
                    latitude:-24.061220, 
                    longitude:-54.307098,
                    html: "Salto del Guaira"
                },

                {
                    latitude:-25.4994966, 
                    longitude:-54.6602588,
                    html: "Ciudad del Este"
                },

                {
                    latitude:-25.7906925,
                    longitude:-55.106021,
                    html: "Santa Rita"
                }
                       
            ]
        });