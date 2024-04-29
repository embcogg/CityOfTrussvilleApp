//
//  
//  CityOfTrussvilleApp
//
//  Created by Emily Coggins on 4/27/24.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "The Gateway",
            cityName: "Trussville",
            coordinates: CLLocationCoordinate2D(latitude: 33.61962, longitude: -86.60842),
            description: "The Trussville Entertainment District provides a vehicular hierarchy of gridded streets allowing for the development of true pedestrian public space within the downtown. It is complete with breweries, restaurants, public parking, a multi-purpose pavilion and stage.",
            imageNames: [
                "entertainment-1",
                "entertainment-2",
                "entertainment-3",
            ],
            link: "https://trussvillegateway.org/"),
        
        Location(
            name: "Trussville Sports Complex",
            cityName: "Trussville",
            coordinates: CLLocationCoordinate2D(latitude: 33.63817, longitude: -86.59505),
            description: "Spanning over 70 acres, the Trussville Sports Complex is a hub for local sports and recreation. It features multiple baseball and soccer fields, tennis courts, and a walking track, making it a popular destination for tournaments, daily exercise, and community sports leagues.",
            imageNames: [
                "sports-complex-1",
                "sports-complex-2",
                "sports-complex-3",
            ],
            link: "https://www.birminghamtrackclub.com/trussville-sports-complex/"),
        
        Location(
            name: "Trussville Library",
            cityName: "Trussville",
            coordinates: CLLocationCoordinate2D(latitude: 33.62685, longitude: -86.60445),
            description: "The Trussville Public Library is a cornerstone for community learning and engagement, offering a vast collection of books, multimedia resources, and digital services. It hosts regular workshops, reading programs, and educational events for all ages, fostering a love of reading and lifelong learning in the community.",
            imageNames: [
                "library-1",
                "library-2",
                "library-3",
            ],
            link: "https://www.trussvillelibrary.com"),
        
        Location(
            name: "Civitan Park",
            cityName: "Trussville",
            coordinates: CLLocationCoordinate2D(latitude: 33.62458, longitude: -86.60079),
            description: "Civitan Park Trail is a paved, multiuse trail that connects multiple parks, recreational amenities, and community resources in Trussville. The trail is included in the Red Rock Trail System, a developing 750-mile network of multiuse trails in Jefferson County.",
            imageNames: [
                "civitan-park-1",
                "civitan-park-2",
                "civitan-park-3",
            ],
            link: "https://www.traillink.com/trail/civitan-park-trail/"),
        
        Location(
            name: "City Hall",
            cityName: "Trussville",
            coordinates: CLLocationCoordinate2D(latitude: 33.62079, longitude: -86.60295),
            description: "Nestled in the heart of downtown Trussville, the City Hall stands as a beacon of community leadership and service. This historic building not only serves as the administrative hub where city operations are orchestrated but also hosts various community events throughout the year. With its classic architecture that echoes the rich heritage of Trussville, the City Hall is a focal point for residents seeking to engage with local governance, attend public meetings, or simply explore the roots of their community.",
            imageNames: [
                "city-hall-1",
                "city-hall-2",
            ],
            link: "https://trussville.org/"),
        
        Location(
            name: "US Post Office",
            cityName: "Trussville",
            coordinates: CLLocationCoordinate2D(latitude: 33.61322, longitude: -86.61185),
            description: "Conveniently located just off the main highway, the Trussville Post Office is a critical service hub for all your mailing and shipping needs. This facility offers a wide range of postal services encompassing domestic and international mail, package delivery, and special services such as certified and insured mail. With its commitment to efficient service and community engagement, the Trussville Post Office is equipped to handle the postal demands of both residents and businesses.",
            imageNames: [
                "post-office-1",
                "post-office-2",
            ],
            link: "https://tools.usps.com/find-location.htm?location=1385093"),
        
        Location(
            name: "Trussville Mall Park",
            cityName: "Trussville",
            coordinates: CLLocationCoordinate2D(latitude: 33.62911, longitude: -86.60513),
            description: "Trussville Mall Park is a verdant oasis amidst the urban landscape. This beautifully landscaped park offers residents and visitors alike a serene retreat with expansive green spaces, shaded picnic areas, and well-maintained walking trails that are perfect for a leisurely stroll or a brisk jog. Whether you're looking to relax, play, or exercise, Trussville Mall Park provides a welcoming environment with something for everyone.",
            imageNames: [
                "mall-1",
                "mall-2",
                "mall-3",
            ],
            link: "https://www.birmingham365.org/venue/trussville-mall/"),
        
        Location(
            name: "Trussville Civic Center",
            cityName: "Trussville",
            coordinates: CLLocationCoordinate2D(latitude: 33.66028, longitude: -86.59341),
            description: "The Trussville Civic Center stands as a multifunctional facility at the heart of the community, designed to host a wide range of events and activities. With its modern architecture and versatile spaces, it accommodates everything from large corporate events and weddings to community gatherings and recreational classes. This center is not just a building; it's a vibrant hub for civic engagement, culture, and education.",
            imageNames: [
                "civic-center-1",
                "civic-center-2",
                "civic-center-3",
                "civic-center-4",
            ],
            link: "https://trussville.org/departments/parks-recreation/fitness-center/"),
        
        Location(
            name: "Trussville Veterans Memorial Park",
            cityName: "Trussville",
            coordinates: CLLocationCoordinate2D(latitude: 33.62254, longitude: -86.60154),
            description: "Veterans Memorial Park is a place of reflection and remembrance, dedicated to the brave men and women who have served in the United States armed forces. Nestled in a peaceful area of Trussville, this park features beautifully landscaped grounds surrounding a central memorial monument that lists the names of local veterans. Visitors are invited to walk the serene paths, sit by the tranquil waters of the reflective pool, and pay homage to the sacrifices made for our freedoms.",
            imageNames: [
                "veterans-park-1",
                "veterans-park-2",
            ],
            link: "https://www.bhamwiki.com/w/Trussville_Veterans_Memorial"),
        
        Location(
            name: "The Pinnacle at Tutwiler Farm",
            cityName: "Trussville",
            coordinates: CLLocationCoordinate2D(latitude: 33.60437, longitude: -86.64051),
            description: "Located at the edge of Trussville, The Pinnacle at Tutwiler Farm is a premier shopping destination that combines retail, dining, and entertainment in a vibrant and modern setting. With its wide range of national retailers and local boutiques, The Pinnacle caters to all shopping enthusiasts. The center also features a variety of dining options, from fast food to sit-down restaurants, offering something to satisfy every palate. Regular community events, ample parking, and beautiful landscaping enhance the shopping experience, making The Pinnacle a hub of activity and a favorite gathering place for locals and visitors alike.",
            imageNames: [
                "pinnacle-1",
                "vpinnacle-2",
                "vpinnacle-3",
            ],
            link: "https://pinnacletrussville.com"),
        
        Location(
            name: "Homestead Village",
            cityName: "Trussville",
            coordinates: CLLocationCoordinate2D(latitude: 33.61003, longitude: -86.62465),
            description: "Nestled in a quiet part of Trussville, Homestead Village offers a peaceful living environment that combines the charm of suburban life with the convenience of modern amenities. This residential community boasts well-appointed homes with spacious layouts, landscaped gardens, and serene walking paths. Homestead Village is ideal for families, retirees, and anyone looking for a tranquil retreat from the hustle and bustle of city life. The community is well-maintained and features a clubhouse, a swimming pool, and tennis courts, providing residents with ample opportunities for recreation and socialization.",
            imageNames: [
                "homestead-1",
                "homestead-2",
                "homestead-3"
            ],
            link: "https://www.blackwaterresources.com/properties/homestead-village/"),
        
    ]
    
}
